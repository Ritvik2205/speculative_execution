.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
add bl, bl
test rax, 1469613902
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
jmp .bb_0.1
.bb_0.1:
cmp rdi, rsi
btc bx, dx
adc rsi, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add cl, -38 # instrumentation
setbe al
cmp di, -98
setnle dl
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add dl, 43 # instrumentation
lea rcx, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xchg cl, bl
adc bl, bl
sub sil, -87
and rdi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
neg rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
cmovnp ecx, ebx
lea rbx, qword ptr [rbx + rdi + 3362]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
