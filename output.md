# Go (Golang) Standard Library Interfaces (Selected)

This is not an exhaustive list of all interfaces in Go's standard library.
I only list those I think are important.
Interfaces defined in frequently used packages (like `io`, `fmt`) are included.
Interfaces that have significant importance are also included.

All of the following information is based on `go version go1.20.7 darwin/arm64`.



### package `os`

#### Signal [[doc](https://golang.org/pkg/os/#Signal)] [[src1](https://golang.org/src/os/exec.go#L72)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/os/exec.go#L72-L75)]

```go
type Signal interface {
	String() string
	Signal()
}
```



### package `io`

#### Reader [[doc](https://golang.org/pkg/io/#Reader)] [[src1](https://golang.org/src/io/io.go#L83)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L83-L85)]

```go
type Reader interface {
	Read(p []byte) (n int, err error)
}
```

#### Writer [[doc](https://golang.org/pkg/io/#Writer)] [[src1](https://golang.org/src/io/io.go#L96)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L96-L98)]

```go
type Writer interface {
	Write(p []byte) (n int, err error)
}
```

#### Closer [[doc](https://golang.org/pkg/io/#Closer)] [[src1](https://golang.org/src/io/io.go#L104)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L104-L106)]

```go
type Closer interface {
	Close() error
}
```

#### Seeker [[doc](https://golang.org/pkg/io/#Seeker)] [[src1](https://golang.org/src/io/io.go#L123)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L123-L125)]

```go
type Seeker interface {
	Seek(offset int64, whence int) (int64, error)
}
```

#### ReadWriter [[doc](https://golang.org/pkg/io/#ReadWriter)] [[src1](https://golang.org/src/io/io.go#L128)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L128-L131)]

```go
type ReadWriter interface {
	Reader
	Writer
}
```

#### ReadCloser [[doc](https://golang.org/pkg/io/#ReadCloser)] [[src1](https://golang.org/src/io/io.go#L134)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L134-L137)]

```go
type ReadCloser interface {
	Reader
	Closer
}
```

#### WriteCloser [[doc](https://golang.org/pkg/io/#WriteCloser)] [[src1](https://golang.org/src/io/io.go#L140)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L140-L143)]

```go
type WriteCloser interface {
	Writer
	Closer
}
```

#### ReadWriteCloser [[doc](https://golang.org/pkg/io/#ReadWriteCloser)] [[src1](https://golang.org/src/io/io.go#L146)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L146-L150)]

```go
type ReadWriteCloser interface {
	Reader
	Writer
	Closer
}
```

#### ReadSeeker [[doc](https://golang.org/pkg/io/#ReadSeeker)] [[src1](https://golang.org/src/io/io.go#L153)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L153-L156)]

```go
type ReadSeeker interface {
	Reader
	Seeker
}
```

#### ReadSeekCloser [[doc](https://golang.org/pkg/io/#ReadSeekCloser)] [[src1](https://golang.org/src/io/io.go#L160)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L160-L164)]

```go
type ReadSeekCloser interface {
	Reader
	Seeker
	Closer
}
```

#### WriteSeeker [[doc](https://golang.org/pkg/io/#WriteSeeker)] [[src1](https://golang.org/src/io/io.go#L167)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L167-L170)]

```go
type WriteSeeker interface {
	Writer
	Seeker
}
```

#### ReadWriteSeeker [[doc](https://golang.org/pkg/io/#ReadWriteSeeker)] [[src1](https://golang.org/src/io/io.go#L173)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L173-L177)]

```go
type ReadWriteSeeker interface {
	Reader
	Writer
	Seeker
}
```

#### ReaderFrom [[doc](https://golang.org/pkg/io/#ReaderFrom)] [[src1](https://golang.org/src/io/io.go#L186)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L186-L188)]

```go
type ReaderFrom interface {
	ReadFrom(r Reader) (n int64, err error)
}
```

#### WriterTo [[doc](https://golang.org/pkg/io/#WriterTo)] [[src1](https://golang.org/src/io/io.go#L197)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L197-L199)]

```go
type WriterTo interface {
	WriteTo(w Writer) (n int64, err error)
}
```

#### ReaderAt [[doc](https://golang.org/pkg/io/#ReaderAt)] [[src1](https://golang.org/src/io/io.go#L227)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L227-L229)]

```go
type ReaderAt interface {
	ReadAt(p []byte, off int64) (n int, err error)
}
```

#### WriterAt [[doc](https://golang.org/pkg/io/#WriterAt)] [[src1](https://golang.org/src/io/io.go#L246)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L246-L248)]

```go
type WriterAt interface {
	WriteAt(p []byte, off int64) (n int, err error)
}
```

#### ByteReader [[doc](https://golang.org/pkg/io/#ByteReader)] [[src1](https://golang.org/src/io/io.go#L259)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L259-L261)]

```go
type ByteReader interface {
	ReadByte() (byte, error)
}
```

#### ByteScanner [[doc](https://golang.org/pkg/io/#ByteScanner)] [[src1](https://golang.org/src/io/io.go#L271)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L271-L274)]

```go
type ByteScanner interface {
	ByteReader
	UnreadByte() error
}
```

#### ByteWriter [[doc](https://golang.org/pkg/io/#ByteWriter)] [[src1](https://golang.org/src/io/io.go#L277)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L277-L279)]

```go
type ByteWriter interface {
	WriteByte(c byte) error
}
```

#### RuneReader [[doc](https://golang.org/pkg/io/#RuneReader)] [[src1](https://golang.org/src/io/io.go#L286)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L286-L288)]

```go
type RuneReader interface {
	ReadRune() (r rune, size int, err error)
}
```

#### RuneScanner [[doc](https://golang.org/pkg/io/#RuneScanner)] [[src1](https://golang.org/src/io/io.go#L298)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L298-L301)]

```go
type RuneScanner interface {
	RuneReader
	UnreadRune() error
}
```

#### StringWriter [[doc](https://golang.org/pkg/io/#StringWriter)] [[src1](https://golang.org/src/io/io.go#L304)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/io/io.go#L304-L306)]

```go
type StringWriter interface {
	WriteString(s string) (n int, err error)
}
```



### package `fmt`

#### ScanState [[doc](https://golang.org/pkg/fmt/#ScanState)] [[src1](https://golang.org/src/fmt/scan.go#L21)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/scan.go#L21-L49)]

```go
type ScanState interface {
	ReadRune() (r rune, size int, err error)
	UnreadRune() error
	SkipSpace()
	Token(skipSpace bool, f func(rune) bool) (token []byte, err error)
	Width() (wid int, ok bool)
	Read(buf []byte) (n int, err error)
}
```

#### Scanner [[doc](https://golang.org/pkg/fmt/#Scanner)] [[src1](https://golang.org/src/fmt/scan.go#L55)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/scan.go#L55-L57)]

```go
type Scanner interface {
	Scan(state ScanState, verb rune) error
}
```

#### State [[doc](https://golang.org/pkg/fmt/#State)] [[src1](https://golang.org/src/fmt/print.go#L39)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/print.go#L39-L49)]

```go
type State interface {
	Write(b []byte) (n int, err error)
	Width() (wid int, ok bool)
	Precision() (prec int, ok bool)
	Flag(c int) bool
}
```

#### Formatter [[doc](https://golang.org/pkg/fmt/#Formatter)] [[src1](https://golang.org/src/fmt/print.go#L54)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/print.go#L54-L56)]

```go
type Formatter interface {
	Format(f State, verb rune)
}
```

#### Stringer [[doc](https://golang.org/pkg/fmt/#Stringer)] [[src1](https://golang.org/src/fmt/print.go#L63)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/print.go#L63-L65)]

```go
type Stringer interface {
	String() string
}
```

#### GoStringer [[doc](https://golang.org/pkg/fmt/#GoStringer)] [[src1](https://golang.org/src/fmt/print.go#L71)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/fmt/print.go#L71-L73)]

```go
type GoStringer interface {
	GoString() string
}
```



### package `encoding/json`

#### Marshaler [[doc](https://golang.org/pkg/encoding/json/#Marshaler)] [[src1](https://golang.org/src/encoding/json/encode.go#L223)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/json/encode.go#L223-L225)]

```go
type Marshaler interface {
	MarshalJSON() ([]byte, error)
}
```

#### Unmarshaler [[doc](https://golang.org/pkg/encoding/json/#Unmarshaler)] [[src1](https://golang.org/src/encoding/json/decode.go#L119)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/json/decode.go#L119-L121)]

```go
type Unmarshaler interface {
	UnmarshalJSON([]byte) error
}
```



### package `database/sql`

#### Scanner [[doc](https://golang.org/pkg/database/sql/#Scanner)] [[src1](https://golang.org/src/database/sql/sql.go#L395)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/database/sql/sql.go#L395-L415)]

```go
type Scanner interface {
	Scan(src any) error
}
```

#### Result [[doc](https://golang.org/pkg/database/sql/#Result)] [[src1](https://golang.org/src/database/sql/sql.go#L3365)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/database/sql/sql.go#L3365-L3377)]

```go
type Result interface {
	LastInsertId() (int64, error)
	RowsAffected() (int64, error)
}
```



### package `net/http`

#### CookieJar [[doc](https://golang.org/pkg/net/http/#CookieJar)] [[src1](https://golang.org/src/net/http/jar.go#L17)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/jar.go#L17-L27)]

```go
type CookieJar interface {
	SetCookies(u *url.URL, cookies []*Cookie)
	Cookies(u *url.URL) []*Cookie
}
```

#### Handler [[doc](https://golang.org/pkg/net/http/#Handler)] [[src1](https://golang.org/src/net/http/server.go#L86)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/server.go#L86-L88)]

```go
type Handler interface {
	ServeHTTP(ResponseWriter, *Request)
}
```

#### ResponseWriter [[doc](https://golang.org/pkg/net/http/#ResponseWriter)] [[src1](https://golang.org/src/net/http/server.go#L95)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/server.go#L95-L160)]

```go
type ResponseWriter interface {
	Header() Header
	Write([]byte) (int, error)
	WriteHeader(statusCode int)
}
```

#### Flusher [[doc](https://golang.org/pkg/net/http/#Flusher)] [[src1](https://golang.org/src/net/http/server.go#L173)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/server.go#L173-L176)]

```go
type Flusher interface {
	Flush()
}
```

#### Hijacker [[doc](https://golang.org/pkg/net/http/#Hijacker)] [[src1](https://golang.org/src/net/http/server.go#L185)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/server.go#L185-L206)]

```go
type Hijacker interface {
	Hijack() (net.Conn, *bufio.ReadWriter, error)
}
```

#### CloseNotifier [[doc](https://golang.org/pkg/net/http/#CloseNotifier)] [[src1](https://golang.org/src/net/http/server.go#L216)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/server.go#L216-L236)]

```go
type CloseNotifier interface {
	CloseNotify() <-chan bool
}
```

#### RoundTripper [[doc](https://golang.org/pkg/net/http/#RoundTripper)] [[src1](https://golang.org/src/net/http/client.go#L117)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/client.go#L117-L143)]

```go
type RoundTripper interface {
	RoundTrip(*Request) (*Response, error)
}
```

#### Pusher [[doc](https://golang.org/pkg/net/http/#Pusher)] [[src1](https://golang.org/src/net/http/http.go#L133)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/http.go#L133-L159)]

```go
type Pusher interface {
	Push(target string, opts *PushOptions) error
}
```

#### FileSystem [[doc](https://golang.org/pkg/net/http/#FileSystem)] [[src1](https://golang.org/src/net/http/fs.go#L96)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/fs.go#L96-L98)]

```go
type FileSystem interface {
	Open(name string) (File, error)
}
```

#### File [[doc](https://golang.org/pkg/net/http/#File)] [[src1](https://golang.org/src/net/http/fs.go#L104)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/http/fs.go#L104-L110)]

```go
type File interface {
	io.Closer
	io.Reader
	io.Seeker
	Readdir(count int) ([]fs.FileInfo, error)
	Stat() (fs.FileInfo, error)
}
```



### package `encoding`

#### BinaryMarshaler [[doc](https://golang.org/pkg/encoding/#BinaryMarshaler)] [[src1](https://golang.org/src/encoding/encoding.go#L18)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/encoding.go#L18-L20)]

```go
type BinaryMarshaler interface {
	MarshalBinary() (data []byte, err error)
}
```

#### BinaryUnmarshaler [[doc](https://golang.org/pkg/encoding/#BinaryUnmarshaler)] [[src1](https://golang.org/src/encoding/encoding.go#L28)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/encoding.go#L28-L30)]

```go
type BinaryUnmarshaler interface {
	UnmarshalBinary(data []byte) error
}
```

#### TextMarshaler [[doc](https://golang.org/pkg/encoding/#TextMarshaler)] [[src1](https://golang.org/src/encoding/encoding.go#L36)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/encoding.go#L36-L38)]

```go
type TextMarshaler interface {
	MarshalText() (text []byte, err error)
}
```

#### TextUnmarshaler [[doc](https://golang.org/pkg/encoding/#TextUnmarshaler)] [[src1](https://golang.org/src/encoding/encoding.go#L46)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/encoding/encoding.go#L46-L48)]

```go
type TextUnmarshaler interface {
	UnmarshalText(text []byte) error
}
```



### package `html`



### package `html/template`



### (builtin)

#### error [[doc](https://golang.org/pkg/builtin/#error)] [[src1](https://golang.org/src/builtin/builtin.go#L280)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/builtin/builtin.go#L280-L282)]

```go
type error interface {
	Error() string
}
```



### package `runtime`

#### Error [[doc](https://golang.org/pkg/runtime/#Error)] [[src1](https://golang.org/src/runtime/error.go#L10)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/runtime/error.go#L10-L18)]

```go
type Error interface {
	error
	RuntimeError()
}
```



### package `math/rand`

#### Source [[doc](https://golang.org/pkg/math/rand/#Source)] [[src1](https://golang.org/src/math/rand/rand.go#L30)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/math/rand/rand.go#L30-L33)]

```go
type Source interface {
	Int63() int64
	Seed(seed int64)
}
```

#### Source64 [[doc](https://golang.org/pkg/math/rand/#Source64)] [[src1](https://golang.org/src/math/rand/rand.go#L41)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/math/rand/rand.go#L41-L44)]

```go
type Source64 interface {
	Source
	Uint64() uint64
}
```



### package `sort`

#### Interface [[doc](https://golang.org/pkg/sort/#Interface)] [[src1](https://golang.org/src/sort/sort.go#L14)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/sort/sort.go#L14-L37)]

```go
type Interface interface {
	Len() int
	Less(i, j int) bool
	Swap(i, j int)
}
```



### package `net`

#### Addr [[doc](https://golang.org/pkg/net/#Addr)] [[src1](https://golang.org/src/net/net.go#L105)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/net.go#L105-L108)]

```go
type Addr interface {
	Network() string
	String() string
}
```

#### Conn [[doc](https://golang.org/pkg/net/#Conn)] [[src1](https://golang.org/src/net/net.go#L113)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/net.go#L113-L168)]

```go
type Conn interface {
	Read(b []byte) (n int, err error)
	Write(b []byte) (n int, err error)
	Close() error
	LocalAddr() Addr
	RemoteAddr() Addr
	SetDeadline(t time.Time) error
	SetReadDeadline(t time.Time) error
	SetWriteDeadline(t time.Time) error
}
```

#### PacketConn [[doc](https://golang.org/pkg/net/#PacketConn)] [[src1](https://golang.org/src/net/net.go#L309)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/net.go#L309-L368)]

```go
type PacketConn interface {
	ReadFrom(p []byte) (n int, addr Addr, err error)
	WriteTo(p []byte, addr Addr) (n int, err error)
	Close() error
	LocalAddr() Addr
	SetDeadline(t time.Time) error
	SetReadDeadline(t time.Time) error
	SetWriteDeadline(t time.Time) error
}
```

#### Listener [[doc](https://golang.org/pkg/net/#Listener)] [[src1](https://golang.org/src/net/net.go#L384)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/net.go#L384-L394)]

```go
type Listener interface {
	Accept() (Conn, error)
	Close() error
	Addr() Addr
}
```

#### Error [[doc](https://golang.org/pkg/net/#Error)] [[src1](https://golang.org/src/net/net.go#L397)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/net/net.go#L397-L405)]

```go
type Error interface {
	error
	Timeout() bool
	Temporary() bool
}
```



### package `image`

#### Image [[doc](https://golang.org/pkg/image/#Image)] [[src1](https://golang.org/src/image/image.go#L38)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/image.go#L38-L48)]

```go
type Image interface {
	ColorModel() color.Model
	Bounds() Rectangle
	At(x, y int) color.Color
}
```

#### RGBA64Image [[doc](https://golang.org/pkg/image/#RGBA64Image)] [[src1](https://golang.org/src/image/image.go#L52)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/image.go#L52-L59)]

```go
type RGBA64Image interface {
	RGBA64At(x, y int) color.RGBA64
	Image
}
```

#### PalettedImage [[doc](https://golang.org/pkg/image/#PalettedImage)] [[src1](https://golang.org/src/image/image.go#L66)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/image.go#L66-L70)]

```go
type PalettedImage interface {
	ColorIndexAt(x, y int) uint8
	Image
}
```



### package `image/color`

#### Color [[doc](https://golang.org/pkg/image/color/#Color)] [[src1](https://golang.org/src/image/color/color.go#L10)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/color/color.go#L10-L19)]

```go
type Color interface {
	RGBA() (r, g, b, a uint32)
}
```

#### Model [[doc](https://golang.org/pkg/image/color/#Model)] [[src1](https://golang.org/src/image/color/color.go#L142)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/color/color.go#L142-L144)]

```go
type Model interface {
	Convert(c Color) Color
}
```



### package `image/draw`

#### Image [[doc](https://golang.org/pkg/image/draw/#Image)] [[src1](https://golang.org/src/image/draw/draw.go#L21)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/draw/draw.go#L21-L24)]

```go
type Image interface {
	image.Image
	Set(x, y int, c color.Color)
}
```

#### RGBA64Image [[doc](https://golang.org/pkg/image/draw/#RGBA64Image)] [[src1](https://golang.org/src/image/draw/draw.go#L30)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/draw/draw.go#L30-L34)]

```go
type RGBA64Image interface {
	image.RGBA64Image
	Set(x, y int, c color.Color)
	SetRGBA64(x, y int, c color.RGBA64)
}
```

#### Quantizer [[doc](https://golang.org/pkg/image/draw/#Quantizer)] [[src1](https://golang.org/src/image/draw/draw.go#L37)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/draw/draw.go#L37-L41)]

```go
type Quantizer interface {
	Quantize(p color.Palette, m image.Image) color.Palette
}
```

#### Drawer [[doc](https://golang.org/pkg/image/draw/#Drawer)] [[src1](https://golang.org/src/image/draw/draw.go#L60)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/image/draw/draw.go#L60-L64)]

```go
type Drawer interface {
	Draw(dst Image, r image.Rectangle, src image.Image, sp image.Point)
}
```



### package `hash`

#### Hash [[doc](https://golang.org/pkg/hash/#Hash)] [[src1](https://golang.org/src/hash/hash.go#L26)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/hash/hash.go#L26-L46)]

```go
type Hash interface {
	io.Writer
	Sum(b []byte) []byte
	Reset()
	Size() int
	BlockSize() int
}
```

#### Hash32 [[doc](https://golang.org/pkg/hash/#Hash32)] [[src1](https://golang.org/src/hash/hash.go#L49)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/hash/hash.go#L49-L52)]

```go
type Hash32 interface {
	Hash
	Sum32() uint32
}
```

#### Hash64 [[doc](https://golang.org/pkg/hash/#Hash64)] [[src1](https://golang.org/src/hash/hash.go#L55)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/hash/hash.go#L55-L58)]

```go
type Hash64 interface {
	Hash
	Sum64() uint64
}
```



### package `crypto`

#### Signer [[doc](https://golang.org/pkg/crypto/#Signer)] [[src1](https://golang.org/src/crypto/crypto.go#L180)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/crypto/crypto.go#L180-L199)]

```go
type Signer interface {
	Public() PublicKey
	Sign(rand io.Reader, digest []byte, opts SignerOpts) (signature []byte, err error)
}
```

#### SignerOpts [[doc](https://golang.org/pkg/crypto/#SignerOpts)] [[src1](https://golang.org/src/crypto/crypto.go#L202)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/crypto/crypto.go#L202-L207)]

```go
type SignerOpts interface {
	HashFunc() Hash
}
```

#### Decrypter [[doc](https://golang.org/pkg/crypto/#Decrypter)] [[src1](https://golang.org/src/crypto/crypto.go#L212)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/crypto/crypto.go#L212-L221)]

```go
type Decrypter interface {
	Public() PublicKey
	Decrypt(rand io.Reader, msg []byte, opts DecrypterOpts) (plaintext []byte, err error)
}
```



### package `reflect`

#### Type [[doc](https://golang.org/pkg/reflect/#Type)] [[src1](https://golang.org/src/reflect/type.go#L38)] [[src2](https://github.com/golang/go/blob/release-branch.go1.20/src/reflect/type.go#L38-L222)]

```go
type Type interface {
	Align() int
	FieldAlign() int
	Method(int) Method
	MethodByName(string) (Method, bool)
	NumMethod() int
	Name() string
	PkgPath() string
	Size() uintptr
	String() string
	Kind() Kind
	Implements(u Type) bool
	AssignableTo(u Type) bool
	ConvertibleTo(u Type) bool
	Comparable() bool
	Bits() int
	ChanDir() ChanDir
	IsVariadic() bool
	Elem() Type
	Field(i int) StructField
	FieldByIndex(index []int) StructField
	FieldByName(name string) (StructField, bool)
	FieldByNameFunc(match func(string) bool) (StructField, bool)
	In(i int) Type
	Key() Type
	Len() int
	NumField() int
	NumIn() int
	NumOut() int
	Out(i int) Type
	common() *rtype
	uncommon() *uncommonType
}
```





## Source

### iface.awk

```awk
BEGIN {
    if (package == "") {
        print "error: package is not defined"
        exit 1
    }

    if (branch == "") {
        print "error: branch is not defined"
        exit 1
    }

    state = 0
    indent0 = 0
    indent1 = 0
    from_line = 0
    to_line = 0
    filename = ""
    type = ""
    code = ""

    printf "\n"
    printf "\n"
    printf "\n"
    if (package == "builtin") {
        printf "### (builtin)\n"
    } else {
        printf "### package `%s`\n", package
    }
}

# Start of type
/type ([A-Z][^ ]*|error) interface {/ {
    if (state == 0) {
        indent0 = index($0, "type ")
        if (indent0 == 1) {
            state = 1

            s = substr($0, indent0 + 5) # length("type ") == 5
            len = index(s, " ") - 1
            type = substr(s, 0, len)

            filename = FILENAME
            sub(/.*\//, "", filename)

            from_line = FNR
            code = ""
        } else {
            # >>> Uncomment this block to write an alert instead of skipping the code <<<
            # state = 1
            #
            # s = substr($0, indent0 + 5) # length("type ") == 5
            # len = index(s, " ") - 1
            # type = substr(s, 0, len)
            #
            # filename = FILENAME
            # sub(/.*\//, "", filename)
            #
            # from_line = FNR
            # code = ""
            #
            # printf "\n# type is not the first character: filename: %s line: %d\n\n", FILENAME, FNR
        }
    }
}

# Inside type
{
    if (state == 1) {
        line = $0
        # Remove comments
        sub(/[\t ]*\/\/.*/, "", line)
        # Remove trailing whitespaces
        sub(/[\t ]*$/, "", line)
        # Only print non-blank lines
        if (line != "") {
            code = code line "\n"
        }
    }
}

# End of type
/}/ {
    if (state == 1) {
        indent1 = index($0, "}")
        if (indent0 == indent1) {
            state = 0
            to_line = FNR
            printf "\n"
            printf "#### %s " \
                "[[doc](https://golang.org/pkg/%s/#%s)] " \
                "[[src1](https://golang.org/src/%s/%s#L%d)] " \
                "[[src2](https://github.com/golang/go/blob/release-branch.%s/src/%s/%s#L%d-L%d)]\n",
                type,
                package, type,
                package, filename, from_line,
                branch, package, filename, from_line, to_line
            printf "\n"
            printf "```go\n"
            printf "%s", code
            printf "```\n"
        }
    }
}
```

### make.sh

```sh
#!/bin/sh

packages=(
    'os'
    'io'
    'fmt'
    'encoding/json'
    'database/sql'
    'net/http'
    'encoding'
    'html'
    'html/template'
    'builtin'
    'runtime'
    'math/rand'
    'sort'
    'net'
    'image'
    'image/color'
    'image/draw'
    'hash'
    'crypto'
    'reflect'

)

if [ -z "${GOROOT}" ]
then
    eval $(go env | grep -e '^GOROOT=')
fi

if [ -z "${GOROOT}" ]
then
    echo 'Cannot find GOROOT'
    exit 1
fi

go_version=$(go version)
go_branch=${go_version#go version }
go_branch=${go_branch% *}

case ${go_branch} in
go[0-9].[0-9])
    ;;
go[0-9].[0-9].[0-9])
    go_branch=${go_branch%.[0-9]}
    ;;
go[0-9].[0-9][0-9].[0-9])
    go_branch=${go_branch%.*}
    ;;
*)
    printf 'Unexpected go version: %s\n' ${go_version}
    exit 2
    ;;
esac

echo '# Go (Golang) Standard Library Interfaces (Selected)'
echo
echo "This is not an exhaustive list of all interfaces in Go's standard library."
echo 'I only list those I think are important.'
echo 'Interfaces defined in frequently used packages (like `io`, `fmt`) are included.'
echo 'Interfaces that have significant importance are also included.'
echo
printf 'All of the following information is based on `%s`.\n' "$(go version)"

for package in ${packages[@]}
do
    find ${GOROOT}/src/${package} -maxdepth 1 \
        -type f '(' \
            -name '*_test.go' -prune -o \
            -name '*.go' -exec \
                awk -f iface.awk -v package="${package}" -v branch="${go_branch}" '{}' '+' \
        ')'
done

printf '\n'
printf '\n'
printf '\n'
printf '\n'
printf '\n'
printf '## Source\n'
printf '\n'

printf '### iface.awk\n'
printf '\n'
printf '```awk\n'
cat iface.awk
printf '```\n'
printf '\n'

printf '### make.sh\n'
printf '\n'
printf '```sh\n'
cat make.sh
printf '```\n'
```
