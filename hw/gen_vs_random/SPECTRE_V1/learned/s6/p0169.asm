.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmp rax, -1877933118
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
cmovnle rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dil, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 27
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
