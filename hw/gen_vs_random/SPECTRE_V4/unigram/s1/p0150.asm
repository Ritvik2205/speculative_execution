.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
imul edx, esi, 89
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov ebx, 817819255
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmp esi, esi
add cl, cl
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 84
test dl, bl
btc eax, 62
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
cmovnl dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
add sil, 74 # instrumentation
cmovle esi, edx
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add al, 80 # instrumentation
mov dl, al
sub cx, -114
or edx, -128
imul di
add cl, 53 # instrumentation
cmovnbe ebx, ecx
sub ebx, edx
add esi, 3
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
or sil, al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
test al, al
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
not dl
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
xor rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 21
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
or ax, 27604
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
cmp ax, -18179
cmp al, al
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
