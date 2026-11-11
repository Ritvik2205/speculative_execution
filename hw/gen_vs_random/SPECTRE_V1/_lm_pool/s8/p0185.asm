.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb eax, edi
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
add dl, 47
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -13
and bl, cl
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, cl
jle .bb_0.3
jmp .exit_0
.bb_0.3:
setp al
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
