.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rsi, rsi
add al, al
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 53
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
inc edx
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
test dl, dl
bts eax, 209
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 25
movzx eax, dl
sbb bl, 57
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
mul cl
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
imul bx, ax
cmovs bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
cmp dil, al
add edx, 54
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
mov bl, bl
cmovnb cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
cmovns rax, rsi
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
and bl, 26
cmp al, 81
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and di, 29
xor ecx, 63
dec dx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
