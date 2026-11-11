.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -82
lea ax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 32
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
cmovb eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 28
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
sbb rdx, 98
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
setnl cl
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
