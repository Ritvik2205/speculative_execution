.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
btr si, bx
xor cl, 15
or al, -58
or al, 74
bt bx, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 100
jmp .bb_0.1
.bb_0.1:
test cl, 0
and sil, dl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
bts rdx, 200
xor cl, 15
or al, dil
and cx, -8
xor rax, -404206377
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
