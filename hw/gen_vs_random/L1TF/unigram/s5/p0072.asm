.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -81
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
bt si, bx
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
lea edi, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 66
jmp .bb_0.1
.bb_0.1:
mov sil, 32
lea ecx, qword ptr [rsi + rdx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
add cl, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
lea rsi, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 84
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
