.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
lea bx, qword ptr [rsi]
sub bl, -6
xor al, bl
lea cx, qword ptr [rcx + rax]
xchg dl, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
not di
add ax, 23362
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
