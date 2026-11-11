.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -6
add dil, al
and ax, 23118
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
sbb dl, 127
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
or dl, sil
and bl, -65
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
