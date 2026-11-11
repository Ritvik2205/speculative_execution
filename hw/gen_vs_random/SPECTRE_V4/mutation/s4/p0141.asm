.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovnb edi, ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and eax, -1555813586
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add al, -44
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl ax, bx
movsx rbx, al
cmp ebx, ecx
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor rax, -117
imul edx, ecx, -116
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, -1341747033
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
xchg dl, bl
test bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmp edi, ebx
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
bswap rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
btc edi, esi
cmp al, -78
mov dl, bl
inc dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
