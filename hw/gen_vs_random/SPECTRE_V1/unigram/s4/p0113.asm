.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
setno dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and dil, 73
setns sil
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 3
lea esi, qword ptr [rdx + rax]
btr rax, rdx
add dl, 92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
bt edi, 71
lea ebx, qword ptr [rdi + rbx + 22]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 15
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 50
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
