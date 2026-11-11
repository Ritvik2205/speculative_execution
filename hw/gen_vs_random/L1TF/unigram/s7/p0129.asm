.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo di, cx
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
xor di, 69
xor cx, 113
add dl, -53 # instrumentation
lea rcx, qword ptr [rax + rdx + 93]
sub dil, -39
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
movzx cx, bl
sbb sil, sil
xor ax, 22976
add dl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
setp cl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
