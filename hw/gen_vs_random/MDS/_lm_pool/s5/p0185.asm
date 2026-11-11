.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
not al
or bl, dl
or al, -22
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or al, 74
test dl, cl
and cl, cl
or rbx, -72
or sil, bl
test cl, sil
or ax, -20176
and dl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
