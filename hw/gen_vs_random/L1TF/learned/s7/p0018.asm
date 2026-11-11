.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
imul al
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
xor eax, -603819833
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btc cx, si
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
lea rsi, qword ptr [rax + rdx + 69]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
