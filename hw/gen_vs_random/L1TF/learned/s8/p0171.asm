.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 83
and ax, 37
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and dil, -22
and dil, bl
add sil, bl
add dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
test al, -32
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, -97
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
