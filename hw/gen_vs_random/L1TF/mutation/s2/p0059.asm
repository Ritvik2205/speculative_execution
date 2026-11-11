.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
imul rcx
or rdx, 11
cmovns esi, edx
mov bl, cl
adc al, -6
jmp .bb_0.1
.bb_0.1:
test al, -84
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
add dl, 127 # instrumentation
setnbe sil
xor si, dx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
test al, bl
bswap esi
jmp .bb_0.2
.bb_0.2:
add cl, -36
bts ebx, esi
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
