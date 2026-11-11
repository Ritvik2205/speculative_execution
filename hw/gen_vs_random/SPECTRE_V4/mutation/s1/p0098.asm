.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -4
btr ebx, 156
cmovnb edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
test al, bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
movzx edi, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
imul ax, dx
adc sil, -31
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xor al, bl
add bl, -38
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb dl, cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
imul edx, ecx, -116
mov bl, bl
cmovl ax, bx
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
cmp ebx, ecx
cmp dl, dil
sub cl, dl
and eax, -2040347881
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
bt ecx, 135
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add eax, 953442933
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmovnp rsi, rax
xchg di, di
xor rax, -224991767
movsx rbx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
