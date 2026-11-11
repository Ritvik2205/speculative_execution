.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 25
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
movsx rbx, al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmovl ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
test al, bl
mov esi, eax
add al, -3
xor al, bl
cmp ebx, ecx
imul edx, ecx, -116
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
sbb dl, cl
sub cl, dl
cmovnb edi, ebx
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
cmp dl, al
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and eax, -1572488789
add eax, 953442933
cmovnp rsi, rax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
xchg di, di
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
btr ebx, 156
xor rax, -1522567562
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
imul ax, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
cmp dl, dil
add bl, 54
adc sil, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
