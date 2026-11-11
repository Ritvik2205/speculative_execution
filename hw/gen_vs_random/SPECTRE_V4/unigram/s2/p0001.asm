.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, 19
movsx ebx, dil
xor cl, bl
and edi, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
cmp rsi, 74
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
or bx, -33
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
cmovnz rcx, rdi
xchg edx, edx
mov sil, 6
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
cmovl rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and cx, -117
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 56
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
cmovno rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
sub al, 29
cmovb ax, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
xor dil, al
sub al, 29
xor rdi, rcx
movsx bx, cl
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
sub bx, ax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or sil, 18
sub rdi, -52
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
xor rbx, -99
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], eax
add dil, dl
imul esi, ebx, 60
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
mul edx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
