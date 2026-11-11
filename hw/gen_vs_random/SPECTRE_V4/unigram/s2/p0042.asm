.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
adc al, dl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
cmp rbx, -91
sbb ax, 75
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
xchg ecx, ebx
cmp eax, 64
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sub rbx, 101
sbb rsi, rcx
test dil, sil
cmovnle rax, rdx
test cl, -119
movsx rdi, si
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmovnz ecx, edi
test bl, 110
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
bt esi, edi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 86
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
add al, 66 # instrumentation
cmovp edi, edi
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
xor ecx, 82
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
cmp al, -106
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
cmovnz esi, edi
bswap rbx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
