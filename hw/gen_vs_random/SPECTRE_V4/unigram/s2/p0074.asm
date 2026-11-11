.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
sbb dil, 14
bt eax, 84
movzx rsi, ax
movsx rbx, dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
mul rbx
add al, dl
imul rdi
imul cl
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
xchg dl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
or dil, 73
or bx, -111
xor bx, cx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
cmovnb ebx, edx
sbb dl, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 47
or al, dil
cmp dil, -124
test rax, -344032571
movzx ecx, cx
sub dl, al
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
or sil, bl
movsx esi, ax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 7
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 15
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 59
add cl, 56 # instrumentation
cmovle rsi, rcx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
bts rsi, rax
add al, 122 # instrumentation
cmovns ecx, edi
or sil, cl
dec eax
btc ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
