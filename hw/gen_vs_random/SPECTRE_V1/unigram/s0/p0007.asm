.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and dil, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc ax, 51
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 86
cmovz eax, ebx
sbb rdi, 64
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
setle al
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
