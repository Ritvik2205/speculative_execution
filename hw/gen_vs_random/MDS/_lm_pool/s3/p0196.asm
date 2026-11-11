.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
test eax, 1287331633
cmovp cx, bx
or dl, -21
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 81
xor bl, sil
or al, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
