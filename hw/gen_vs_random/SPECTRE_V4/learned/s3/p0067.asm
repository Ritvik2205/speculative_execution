.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test rsi, rdx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor al, 56
cmovno ax, ax
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 62
or bl, cl
add cl, -42 # instrumentation
adc dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
or dl, dl
add rcx, 20
or bl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovs ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 56
cmovnbe ebx, eax
mul dil
add bl, -18 # instrumentation
mov rdi, rsi
cmovnbe rax, rsi
and dil, dl
cmovnb si, si
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
cmovnbe edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
sub cl, al
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
add eax, -1796699558
not bx
and eax, -37
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
