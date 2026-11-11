.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
bt ecx, 25
add bl, -38
imul edx, ecx, -116
xor rax, -117
add al, -99
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
xor al, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
imul ax, dx
movzx edi, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovnp rsi, rax
and eax, -1056713114
add eax, 1936378991
mov esi, eax
sub cl, dl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
test al, bl
adc sil, -112
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
btr ebx, 87
xchg di, di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
movsx rbx, al
cmovl ax, bx
cmp dl, al
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
cmovnb edi, ebx
cmp ebx, ecx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
