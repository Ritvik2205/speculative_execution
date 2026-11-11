.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -31
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
sbb dl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
xor al, bl
movzx edi, al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
bt ecx, 25
xchg di, di
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
cmovnp rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
imul edx, ecx, -116
add eax, -1628652110
cmp dl, dil
mov esi, eax
cmp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
imul ax, dx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
cmovnb edi, ebx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovl ax, bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
mov bl, bl
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
btr ebx, 116
add bl, -38
add al, -82
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and eax, -1555813586
movsx rbx, al
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xor rax, 93
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
