.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
xor rdi, -9
test rsi, 75
btr bx, cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
btr bx, di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or dil, -78
xor cl, 98
and sil, -9
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
