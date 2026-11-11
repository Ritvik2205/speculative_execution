.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
cmovl rdi, rcx
adc dil, 120
cmp sil, bl
jmp .bb_0.1
.bb_0.1:
xor bx, 86
inc bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
mul rax
lea eax, qword ptr [rdi + rsi]
mul edi
xchg bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
