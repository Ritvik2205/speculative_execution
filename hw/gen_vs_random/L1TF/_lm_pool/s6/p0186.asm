.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
sub dl, -49
xchg rdx, rcx
lea si, qword ptr [rax + rsi + 94]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and al, -68
sbb bl, dl
test eax, 645518295
xor al, bl
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
