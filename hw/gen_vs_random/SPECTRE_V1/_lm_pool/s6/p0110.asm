.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, si
add al, 3
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
sbb cl, 105
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
xchg al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
