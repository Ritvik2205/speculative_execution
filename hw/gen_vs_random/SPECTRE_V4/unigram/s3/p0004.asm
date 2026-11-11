.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
mov al, al
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], eax
bt esi, 227
add dl, -114 # instrumentation
cmovl cx, ax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 87
cmovle eax, ecx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
imul edi, edx
not eax
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
test dl, al
sub esi, eax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
mov al, 79
or al, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 28
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 50
cmovp si, di
or dl, al
xchg rax, rdi
mov rdx, 54
xor ecx, 42
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
imul cl
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
cmovb di, di
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmovl rcx, rdx
btc rsi, 140
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 25
add al, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
sub cl, -74
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 30
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
add bx, 110
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
cmovs edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
