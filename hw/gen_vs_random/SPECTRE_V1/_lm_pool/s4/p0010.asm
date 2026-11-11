.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
sub cl, sil
mov dl, al
sbb bl, dil
or ecx, 12
add dl, 47
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 94
add dl, cl
add al, al
lea cx, qword ptr [rbx + rax + 52]
lea dx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
