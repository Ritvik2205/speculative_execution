.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and dl, al
test eax, -651442446
sub edi, 90
add al, dl
test al, -24
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rbx, 6
xor dl, -66
add al, 40
sbb dil, 63
mov bl, dil
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
xor al, -6
xchg ebx, ecx
mov dl, sil
sbb ax, 7207
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
mov cl, -38
mov sil, dil
or al, sil
and ax, -23308
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
sbb cl, 35
and dl, 126
sbb sil, 24
cmp rdi, 28
mov al, 90
or cl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
