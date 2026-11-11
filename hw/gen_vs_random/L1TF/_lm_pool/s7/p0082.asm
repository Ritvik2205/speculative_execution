.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
xchg ebx, edi
or edx, 8
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rcx, 6
btc di, dx
add dil, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
test bl, 12
bt rax, rcx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
sbb sil, -19
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
