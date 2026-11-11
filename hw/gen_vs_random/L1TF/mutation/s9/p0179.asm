.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 64 # instrumentation
sbb bl, dl
xor al, al
or cl, -78
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
test al, -84
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
sbb al, -50
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx edi, sil
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
sub si, -105
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
jmp .bb_0.2
.bb_0.2:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
