.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
cmp sil, -100
adc bx, 52
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 55
cmovbe rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bt edx, 17
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
cmovnb edx, edx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
and al, -12
xor al, -82
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb ecx, edx
bts rax, rcx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
sbb dil, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
cmp ax, -22704
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdx
add dil, 75
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
add rdi, rdi
xchg rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
sbb eax, -141178938
sub cl, dil
adc edi, -83
mul rbx
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 50
btc cx, di
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
cmovle rdi, rcx
cmovnz eax, edx
test sil, 16
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
