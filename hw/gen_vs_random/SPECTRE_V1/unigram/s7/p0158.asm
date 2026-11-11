.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
cdq
cdq
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 14
and di, 71
cmovnl ecx, edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 100
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
lea rdx, qword ptr [rbx + rcx + 54]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
lea rsi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
imul dx
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
