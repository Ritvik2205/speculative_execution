.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
test dil, bl
and ebx, 70
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
test al, 22
and al, al
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor dl, -59
or ax, -20176
btr ebx, edi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
btc cx, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
