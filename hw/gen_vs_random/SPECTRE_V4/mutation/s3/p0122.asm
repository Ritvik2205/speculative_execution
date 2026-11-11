.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 84
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
xchg di, di
btr ebx, 116
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmp ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
sub cl, dl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
movzx edi, al
test al, bl
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
mov esi, eax
cmovl ax, bx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
imul edx, ecx, -116
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
mov bl, bl
add bl, -59
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bt ecx, 135
adc sil, -63
and eax, -1056713114
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmp dl, dil
xor al, bl
movsx rbx, al
add al, 40
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
xor rax, -117
cmovnb edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
