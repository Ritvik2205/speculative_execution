.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, -60
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, -15
test rax, -405021090
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, 90
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, -22704
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or di, 2
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmp al, 98
or cl, -55
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
xor rsi, -102
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
