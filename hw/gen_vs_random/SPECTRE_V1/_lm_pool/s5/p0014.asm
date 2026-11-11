.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 68
xchg esi, edi
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
xor eax, -105
xchg rax, rcx
sub al, dil
adc cl, -81
sub sil, -18
sub cx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
