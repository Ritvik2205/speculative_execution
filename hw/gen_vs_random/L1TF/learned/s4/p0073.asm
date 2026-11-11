.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 38
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
sbb rax, 2044012157
xor dl, al
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xchg dil, dl
or cl, -78
lea bx, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
test dx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
