.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
btc eax, 21
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
xchg rcx, rbx
sbb al, bl
sub sil, -18
test eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
