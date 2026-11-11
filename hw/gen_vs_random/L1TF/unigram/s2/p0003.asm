.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edx, edi
cmovb si, ax
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
sbb edx, 23
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
add edx, 56
or rdx, 11
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
cmovnz ax, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 8
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
