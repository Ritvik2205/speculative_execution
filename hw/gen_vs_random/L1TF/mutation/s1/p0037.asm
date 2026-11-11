.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
or cl, -78
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
add bl, 64 # instrumentation
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
sbb al, 92
xor al, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
sub si, -105
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
movsx edi, sil
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
