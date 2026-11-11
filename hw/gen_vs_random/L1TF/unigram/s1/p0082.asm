.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 33
or eax, edx
and ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
cmovno rdx, rax
sbb ax, cx
cwde
jmp .bb_0.1
.bb_0.1:
and dx, cx
cmovno rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
or dil, -113
adc sil, dil
add al, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
sbb dx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
