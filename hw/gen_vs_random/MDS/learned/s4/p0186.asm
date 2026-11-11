.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
adc rdx, 26
add bl, 31
xor di, -116
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 24
jmp .bb_0.1
.bb_0.1:
xor cx, dx
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
or bl, sil
bts rcx, 115
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 42
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovz ecx, edx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and al, 126
xor cl, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
