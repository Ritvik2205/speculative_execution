.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -56
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test al, -84
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
cmp cl, al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
jmp .bb_0.3
.bb_0.3:
lea dx, qword ptr [rdx]
imul rsi, rcx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
