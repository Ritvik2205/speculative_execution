.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 14
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
lea cx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
lea dx, qword ptr [rsi + rcx + 52]
add al, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and bl, dl
movsx di, al
sub cl, sil
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
