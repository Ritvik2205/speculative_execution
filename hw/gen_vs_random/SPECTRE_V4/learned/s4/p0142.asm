.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
add eax, -1796699558
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 63
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmovnle cx, cx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
adc al, -58
sub cl, cl
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test rax, -331426050
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
add rdi, -94
btc ebx, 94
sbb cl, bl
imul rdi, rsi, 57
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
cmovb dx, di
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
adc rax, 1542637830
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmp bl, 13
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
imul bl
add sil, -42 # instrumentation
lea ebx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
