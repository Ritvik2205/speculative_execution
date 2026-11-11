.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx + rdi]
bts rax, 45
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
mov eax, edx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
cmovl rdx, rdx
setnbe bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 89
add cl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
adc rsi, 51
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
