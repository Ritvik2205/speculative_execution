.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
or rsi, 7
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, -63
or al, 30
xor sil, 27
jmp .bb_0.1
.bb_0.1:
test al, sil
btr di, dx
bts dx, 50
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 48
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
