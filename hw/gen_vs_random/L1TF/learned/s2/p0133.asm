.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rcx, rdx
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and ax, 37
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, al
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
