.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
test al, bl
bt ecx, 25
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and eax, -1237519395
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
movzx edi, al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xchg di, di
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
imul edx, ecx, -116
cmovl ax, bx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
mov bl, bl
sub cl, dl
imul ax, dx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
adc sil, -112
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
btr ebx, 156
add eax, 1017938146
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
cmovnb edi, ebx
movsx rbx, al
cmovnp rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmp dl, al
sbb dl, cl
xor rax, -111081832
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
cmp dl, dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
xor al, bl
add bl, -59
mov esi, eax
add al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
