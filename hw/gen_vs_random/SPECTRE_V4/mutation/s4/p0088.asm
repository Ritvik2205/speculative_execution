.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
cmp dl, dil
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
add bl, -49
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmovl ax, bx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
xchg di, di
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor rax, 944027678
imul edx, ecx, -116
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
bt ecx, 247
movsx rbx, al
and eax, -784085938
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmovnb edi, ebx
mov esi, eax
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
imul ax, dx
add eax, -2075159577
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
sub cl, dl
test al, bl
btr ebx, 87
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
mov bl, bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
add al, -99
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovnp rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor al, bl
adc sil, 77
cmp ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
