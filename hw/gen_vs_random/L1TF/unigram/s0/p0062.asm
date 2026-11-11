.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
lea dx, qword ptr [rsi + rax]
movsx ecx, bl
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
cmp ax, 7046
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
seto dl
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
sbb edx, edx
cmovb cx, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
cmovnl rbx, rdi
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
