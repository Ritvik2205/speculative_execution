.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
sub dl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 64
lea cx, qword ptr [rdi + rdx + 61]
lea rdi, qword ptr [rbx + rsi + 20302]
sub bl, dil
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
