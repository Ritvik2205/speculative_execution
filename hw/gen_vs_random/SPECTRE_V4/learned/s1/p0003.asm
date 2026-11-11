.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
bts ebx, 22
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
sub cl, cl
test cl, dil
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
mov al, 38
cmovnp ecx, ecx
sub dl, sil
imul dl
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovp edi, eax
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
