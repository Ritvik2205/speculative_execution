.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
sub rcx, rdx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
lea rax, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
sub rdx, rdi
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
lea ecx, qword ptr [rax + rdi + 16]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
lea rdx, qword ptr [rsi + rdx + 19]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
sbb rdi, 59
lea di, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
adc bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
