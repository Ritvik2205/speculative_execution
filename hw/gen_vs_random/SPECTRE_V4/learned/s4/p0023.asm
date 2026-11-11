.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, ecx
adc dil, 124
or rax, -897763206
and al, 75
xor dx, bx
adc dl, dil
cmp al, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
not cl
sub cl, al
and al, -28
sub al, 96
and dil, dl
xchg dx, ax
sub dil, 65
sub rax, 1914398062
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sub ebx, 62
and al, 75
sbb al, 102
cmp al, sil
and al, 41
cmp al, -106
sub cl, -51
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
