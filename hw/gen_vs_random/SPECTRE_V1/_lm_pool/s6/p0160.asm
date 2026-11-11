.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or al, 19
add cl, bl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 77
sbb sil, cl
test al, -126
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 40
cmp bx, 96
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
