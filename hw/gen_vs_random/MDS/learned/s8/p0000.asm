.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
bt si, bx
and al, 49
xor bl, -27
test sil, dil
and rax, -978188247
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
xor rsi, -117
or al, -24
and sil, -69
and bx, 29
btr rax, 56
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
cmovnp rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
