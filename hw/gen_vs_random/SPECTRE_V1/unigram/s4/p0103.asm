.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
cmp eax, edi
add bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
movzx ax, dl
lea rdx, qword ptr [rcx + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
xor si, 46
add cl, -119 # instrumentation
adc al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
