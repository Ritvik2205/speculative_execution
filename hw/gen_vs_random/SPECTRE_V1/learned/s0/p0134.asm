.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
cmp rax, 1189904463
setno sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
cmovnz rbx, rdi
sub rsi, 97
and si, 58
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and bl, bl
and dil, al
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and ax, 2806
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
