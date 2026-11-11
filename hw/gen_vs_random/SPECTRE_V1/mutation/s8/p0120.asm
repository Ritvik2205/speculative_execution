.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and ax, -22629
setz dl
and sil, -55
lea rbx, qword ptr [rdi + rdi + 63323]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, 78
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
imul eax
test eax, 88788211
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
