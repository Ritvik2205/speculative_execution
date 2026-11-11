.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec sil
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
add di, -74
not di
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add cl, 8 # instrumentation
adc dl, sil
xor sil, bl
btc edi, 61
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
sub al, 50
xor si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
sub edx, 70
cmovo rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 19
and bx, 95
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
sub rsi, 26
sub rdi, 16
cmovnbe ax, di
or sil, bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, 7
bswap rsi
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
cmovnle di, cx
and ax, 35
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xor al, 29
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
cmp rdx, 87
sub rax, rdi
sub ebx, 15
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
sbb dil, 78
add bl, 65 # instrumentation
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
