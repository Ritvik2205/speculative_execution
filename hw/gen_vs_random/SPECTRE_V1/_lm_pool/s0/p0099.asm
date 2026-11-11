.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ebx, edx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor bl, cl
test al, -99
and cx, 32
and cl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 75
test dil, -116
xchg bl, cl
sub al, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
