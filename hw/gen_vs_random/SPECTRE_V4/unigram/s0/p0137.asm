.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, ebx
or bx, -33
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
add dl, 56 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 29
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
btc cx, di
mov cl, 1
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
xchg rax, rsi
add rsi, rsi
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
mul sil
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 66
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
movsx cx, cl
cmovl rcx, rdi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
add al, -82
test bl, -29
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
and bx, 26
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
cmovo edx, eax
cmovnle rdi, rax
test sil, 1
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
add dl, 74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
movzx eax, al
xor cl, bl
test di, -19523
mov al, 124
cmovz esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
cmp al, -122
cmovp ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
