.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
inc al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 82
lea rbx, qword ptr [rax + rsi + 88]
test al, dil
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
setno bl
cmovle rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
