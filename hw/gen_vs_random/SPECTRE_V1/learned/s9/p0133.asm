.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
xchg rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
bt ecx, 204
movsx rax, bx
jmp .bb_0.1
.bb_0.1:
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
sbb eax, -417098439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
