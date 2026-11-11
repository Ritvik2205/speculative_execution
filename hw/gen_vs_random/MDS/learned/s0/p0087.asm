.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -15
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
btr dx, si
or bl, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
test rdx, 93
cmovb rcx, rsi
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rcx, -63
jmp .bb_0.1
.bb_0.1:
test al, dil
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
