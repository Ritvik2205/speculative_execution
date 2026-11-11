.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 46
add dil, 88
and rcx, rbx
bts rbx, 82
and al, -68
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
sbb al, 92
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
