.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
movsx edi, al
cmovns bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
cmovl eax, ebx
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 99
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
