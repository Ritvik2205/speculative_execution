.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
not sil
sub al, -97
setp dl
add cl, 88
and bl, bl
and sil, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
cmp di, 45
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
