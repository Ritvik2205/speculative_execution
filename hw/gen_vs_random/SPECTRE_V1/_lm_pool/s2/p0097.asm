.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
test al, 42
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and al, -54
lea rax, qword ptr [rcx + rdi + 69]
cmovnle rdx, rdi
and bl, dl
add al, -44
jmp .bb_0.1
.bb_0.1:
test bl, -8
cmp bl, dil
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
