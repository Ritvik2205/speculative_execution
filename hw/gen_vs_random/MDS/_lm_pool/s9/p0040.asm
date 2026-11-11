.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
or al, cl
or bl, dl
or cl, -36
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and bl, 68
xor cl, 15
or rbx, -72
test dl, 9
xor rdi, -9
test cl, 91
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
or dl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
