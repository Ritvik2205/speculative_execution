.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 64 # instrumentation
sbb bl, dl
sbb al, -23
test al, -104
or cl, 105
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx edi, sil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -16
sub si, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
