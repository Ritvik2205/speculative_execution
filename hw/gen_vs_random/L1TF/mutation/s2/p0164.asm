.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
test dl, bl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
or rax, 1447934463
jmp .bb_0.1
.bb_0.1:
bt rsi, rbx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -36
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
cmovz esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
