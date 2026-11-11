.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
sub cl, 86
and dil, -82
xor dl, al
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, cl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
lea rdx, qword ptr [rcx + rsi]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
