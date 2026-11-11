.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
imul ax, dx
cmp dl, al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
bt ecx, 247
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
movzx edi, al
mov bl, bl
xor rax, -1522567562
xchg di, di
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
test al, bl
cmovnb edi, ebx
cmp ebx, ecx
btr ebx, 116
xor al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and eax, -784085938
cmp dl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
add bl, -59
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl ax, bx
adc sil, 88
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
movsx rbx, al
sbb dl, cl
mov esi, eax
add eax, 953442933
imul edx, ecx, -116
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
sub cl, dl
add al, -4
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmovnp rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
