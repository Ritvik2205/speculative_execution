.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
add rcx, 77
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
