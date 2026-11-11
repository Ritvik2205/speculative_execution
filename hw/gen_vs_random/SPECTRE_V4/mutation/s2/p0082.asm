.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, dx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
cmovnb edi, ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
movzx edi, al
mov bl, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
bt ecx, 25
xor al, bl
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
sub cl, dl
test al, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
add al, -127
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmovnp rsi, rax
cmp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
cmovl ax, bx
adc sil, 77
add eax, 1255256879
add bl, 54
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xchg di, di
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
xor rax, -1522567562
movsx rbx, al
cmp dl, dil
imul edx, ecx, -116
and eax, -784085938
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
btr ebx, 156
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
mov esi, eax
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
