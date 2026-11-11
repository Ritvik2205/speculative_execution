.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
cmp rdx, 50
xor bl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
sbb rsi, 5
add al, 74
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
test al, -82
add cl, -36
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
