.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
inc bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
adc dl, dl
lea bx, qword ptr [rdi + rax + 96]
or dil, -113
seto dil
sbb rsi, 27
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 53
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
setns dil
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
