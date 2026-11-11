.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, di
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
bt ecx, 247
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
add al, -112
and eax, -1056713114
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
btr ebx, 156
cmp dl, al
imul edx, ecx, -116
add bl, -49
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmovl ax, bx
cmovnb edi, ebx
test al, bl
xor al, bl
adc sil, 111
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add eax, 544045319
cmp ebx, ecx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
movzx edi, al
cmovnp rsi, rax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
movsx rbx, al
sub cl, dl
xor rax, -1522567562
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
cmp dl, dil
sbb dl, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
mov esi, eax
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
