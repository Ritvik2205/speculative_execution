.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
lea rdi, qword ptr [rsi + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
dec cl
dec al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 126 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
cwd
xchg edx, ecx
setns sil
cmovbe rax, rdi
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
sbb rdx, 94
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
