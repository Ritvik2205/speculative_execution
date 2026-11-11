.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
inc bl
add rsi, 4
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
setp bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
