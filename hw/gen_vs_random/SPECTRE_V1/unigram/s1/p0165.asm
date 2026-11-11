.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 29
xor eax, 1034314125
add al, 40 # instrumentation
lea ax, qword ptr [rdi + rdi]
bt rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 74
setno dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
lea ax, qword ptr [rdx + rdx + 9]
lea edx, qword ptr [rdi + rcx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
or bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
not rcx
add dil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
