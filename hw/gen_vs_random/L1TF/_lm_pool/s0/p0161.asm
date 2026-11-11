.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 76
cmovb cx, ax
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
movsx rsi, ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 83
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sbb sil, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 73
sub dl, -78
btc cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
