.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea ax, qword ptr [rsi]
sub bl, al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xchg al, sil
add dil, bl
add rax, 913062684
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
xor cx, 22
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
