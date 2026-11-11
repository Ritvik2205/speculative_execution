.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 64
xor ax, bx
and al, -119
add al, -54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 54
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
lea rbx, qword ptr [rbx + rdx + 64]
setbe sil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, dl
adc cl, -18
sub rdi, 49
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 84
xor dl, 69
bt ax, si
lea rdx, qword ptr [rcx + rdx + 64]
adc bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
