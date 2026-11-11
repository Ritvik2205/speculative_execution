.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 16 # instrumentation
cmovnz ax, cx
imul dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovbe ecx, eax
or al, -88
cmovp rsi, rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add dl, 47 # instrumentation
cmovnle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
btr rax, rbx
or dl, dl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btr rax, 187
neg al
bswap edi
or rsi, rsi
cmovz edi, esi
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor rax, 1049851782
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
btc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
mov rdi, -7956777892145474940
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
