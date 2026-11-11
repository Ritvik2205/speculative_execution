.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 61
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
sub cl, dil
and rcx, -29
test bl, -8
xor dl, bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
xor al, cl
or al, 100
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
