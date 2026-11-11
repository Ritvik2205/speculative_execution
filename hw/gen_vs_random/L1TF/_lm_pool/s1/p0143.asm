.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
xor bl, al
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 28
and dil, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rdi + rbx + 72]
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
