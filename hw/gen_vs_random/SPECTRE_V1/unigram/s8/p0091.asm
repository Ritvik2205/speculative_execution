.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
imul rbx, rsi, 11
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
test bx, ax
and si, 25
add al, 19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
mul al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, edi
test cx, -17886
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
add eax, 1938514106
adc dil, al
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
