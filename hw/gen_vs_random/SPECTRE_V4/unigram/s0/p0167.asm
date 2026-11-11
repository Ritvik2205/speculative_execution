.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 135
and dl, sil
cmp ax, 28568
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
adc dx, 98
add sil, al
movzx edi, al
xchg sil, sil
adc dil, sil
and dx, -107
sbb al, al
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 27
imul edx, edx, 93
test dil, bl
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
btc ax, 60
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
cmp rdx, -49
xchg sil, al
cmp al, al
xor rbx, -99
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
test ebx, 49
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovp edx, eax
imul sil
or dl, dl
cmp al, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xchg rbx, rbx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or al, -19
cmp rcx, -121
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
sbb dl, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
