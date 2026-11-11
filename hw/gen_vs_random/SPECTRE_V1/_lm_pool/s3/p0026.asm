.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb cl, dl
cmp rsi, 53
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cx, 88
sub bl, sil
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add al, bl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
