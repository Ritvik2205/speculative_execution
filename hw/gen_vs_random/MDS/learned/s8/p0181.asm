.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
test al, -81
test rbx, 85
btr bx, 74
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
jmp .bb_0.1
.bb_0.1:
test bl, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor ax, -4010
and ax, 13090
test sil, dl
or dil, -78
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
