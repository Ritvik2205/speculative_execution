.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 17
add eax, -1796699558
neg ebx
mov bl, bl
cmovns dx, dx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 27
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 75
movzx di, dil
mov edx, 23
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
or si, 78
add bl, -72
xor cl, -85
imul ecx, eax
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 8
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
neg cl
cmovnbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
sbb dil, 68
mul rbx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
movzx eax, dil
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
not cx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 31
not rdx
adc cl, dl
add si, 4
and dil, 96
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sub dil, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc dl, 96
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmp cx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
