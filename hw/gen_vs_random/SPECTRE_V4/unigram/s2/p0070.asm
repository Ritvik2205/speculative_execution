.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, 45
cmp sil, dl
sub cl, -51
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
test dl, -125
or bx, -33
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and al, dl
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
test si, dx
sub rbx, rdx
cmovp edx, eax
sub al, 69
add bl, -74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
adc rbx, 60
not dil
imul dl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
bts dx, 26
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 87
and rsi, 0b1111111111111 # instrumentation
xor dil, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 45
test edi, ebx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 64
inc cx
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
mov sil, 57
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
imul rcx, rax, 30
or dx, 21
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 83
btr eax, 2
or dx, 93
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
btr rdi, rdx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
