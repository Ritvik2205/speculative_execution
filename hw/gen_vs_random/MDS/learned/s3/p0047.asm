.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and bl, cl
and rax, 41
jmp .bb_0.1
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
test rcx, -613256812
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 9
xor al, -26
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor al, bl
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
