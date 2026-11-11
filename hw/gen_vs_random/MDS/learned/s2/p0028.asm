.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
not bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test dil, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and ax, 27170
or bl, sil
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
cmovbe si, bx
or rcx, -17
xor dil, bl
bt si, dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
