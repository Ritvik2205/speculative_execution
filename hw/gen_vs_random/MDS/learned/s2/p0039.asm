.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1777347252
or dl, sil
jmp .bb_0.1
.bb_0.1:
or al, 25
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and bl, 68
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
jmp .bb_0.5
.bb_0.5:
and rdi, 53
and cl, bl
add al, 74
and ax, 5001
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
