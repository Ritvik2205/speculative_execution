.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
or bl, -5
lea bx, qword ptr [rsi]
test bl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
jmp .bb_0.2
.bb_0.2:
setno dil
jmp .bb_0.3
.bb_0.3:
sub cl, al
and ax, 26813
dec dil
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
