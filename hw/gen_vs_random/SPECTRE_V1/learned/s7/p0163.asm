.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
sub dl, 71
xor ebx, 4
sub al, bl
and bx, -118
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
test al, 40
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
