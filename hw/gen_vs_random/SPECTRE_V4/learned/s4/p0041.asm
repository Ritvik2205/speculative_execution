.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 95
cmovnb esi, ecx
bts dx, 97
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 50
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
test al, bl
adc eax, -79
bt edi, ebx
cmovs ebx, esi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 45
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
add rax, 65
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
add cl, 97 # instrumentation
adc ax, bx
and dl, al
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
adc al, dl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
or ebx, eax
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
xchg rbx, rbx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
cmovnz edx, eax
cmp bl, 13
cmp ax, 23131
test ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
test ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
