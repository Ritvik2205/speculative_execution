.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and dl, 10
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
