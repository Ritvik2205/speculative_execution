.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -58 # instrumentation
cmovnz ebx, eax
cmovnb bx, bx
cmovz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
btc rcx, rcx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovnp eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovo rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
xchg bl, cl
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmovbe rcx, rsi
cmovnp edi, edx
cmovnbe rcx, rdx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
sub di, 9
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmp cx, 0
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and ecx, 71
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
inc cx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add cl, -118 # instrumentation
sbb rsi, 45
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sbb dl, cl
sub rsi, -104
neg dl
test edx, edx
sbb ax, 7207
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
btc eax, 62
cmovnb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
