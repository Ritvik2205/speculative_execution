.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
adc al, -92
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add al, -117 # instrumentation
not rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 17
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
sbb al, -107
sbb sil, dil
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
cmovb rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
