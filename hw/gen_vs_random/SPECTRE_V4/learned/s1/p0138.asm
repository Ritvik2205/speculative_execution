.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, bl
sub al, 26
adc al, 43
and dil, al
sbb al, 102
adc al, 43
or cl, cl
movsx eax, dil
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and sil, bl
test cl, 78
xor al, 118
add dl, -8
sub rax, -1881584175
or cl, 12
sub bx, 24
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or dl, al
sub al, 96
and al, bl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
