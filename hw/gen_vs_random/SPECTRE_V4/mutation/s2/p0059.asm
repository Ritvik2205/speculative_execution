.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
add eax, 544045319
mov bl, bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
cmp dl, al
cmp ebx, ecx
bt ecx, 177
imul edx, ecx, -116
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
movzx edi, al
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
adc sil, 111
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
add al, -29
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovnb edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
btr ebx, 87
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
sub cl, dl
test al, bl
cmovl ax, bx
add bl, -49
cmovnp rsi, rax
cmp dl, dil
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
sbb dl, cl
and eax, -1056713114
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
xchg di, di
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
movsx rbx, al
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
mov esi, eax
xor rax, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
