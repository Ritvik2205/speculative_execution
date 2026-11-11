.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
test al, dl
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
xor dl, dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
test eax, -2032743474
jmp .bb_0.4
.bb_0.4:
lea rsi, qword ptr [rdx + rbx]
jmp .bb_0.5
.bb_0.5:
cbw
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
