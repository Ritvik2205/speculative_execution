.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
cmovnz cx, bx
setz al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test al, dl
and al, -54
lea rsi, qword ptr [rbx + rdx + 79]
mov al, sil
cmp dx, 45
sub al, 63
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
