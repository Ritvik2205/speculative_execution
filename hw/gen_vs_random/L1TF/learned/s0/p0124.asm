.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and cl, 18
add bl, bl
test dl, -37
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
lea dx, qword ptr [rbx + rax + 23]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or cl, bl
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
