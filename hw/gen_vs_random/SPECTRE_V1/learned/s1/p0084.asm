.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xchg ebx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add dil, -75
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
mov dil, cl
sub sil, -18
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
adc eax, -655457029
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
