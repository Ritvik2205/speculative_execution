.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
xor cl, sil
xor dl, 10
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
not cx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, dil
sbb dil, 89
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 7
cmp rsi, 30
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb bl, -94
movsx rdx, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
cmp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
sub cx, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
not ax
xor dl, 58
movzx edx, sil
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and dl, 34
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
sbb al, al
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or bl, bl
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 97
cmp al, -52
imul bx, cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
movzx di, dil
cmovb ebx, edx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
