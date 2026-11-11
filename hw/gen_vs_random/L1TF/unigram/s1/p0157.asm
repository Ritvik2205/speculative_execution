.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb di, 80
or dx, dx
cmp sil, sil
lea ax, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
lea rcx, qword ptr [rsi]
and cl, 66
sbb dl, -26
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
sbb dl, cl
neg rbx
cmovo si, bx
test cx, 63
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
xor rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
