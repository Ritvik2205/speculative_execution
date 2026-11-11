.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 97
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 31
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 95
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovnle ax, ax
sbb sil, 19
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
cmovb dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
