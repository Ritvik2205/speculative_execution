.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
lea rsi, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
adc al, sil
add bl, dl
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
add al, al
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
