.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
mov dl, sil
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rax
sub dx, -12
cmovnz cx, di
xor bl, dl
add edx, eax
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
inc cx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
cmovnp ax, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
add cl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or al, 32
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 58
xchg rdi, rdi
inc ax
add cx, 49
add al, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
cmp dx, ax
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
add al, dil
btc dx, ax
mov sil, 47
cmovnp bx, cx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
btc esi, 63
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
movsx rax, di
cmp al, -53
mov al, 7
sub dl, dl
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
btr dx, 209
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sub rdx, 13
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
cmp bx, 113
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rdx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
