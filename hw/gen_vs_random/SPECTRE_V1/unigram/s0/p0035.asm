.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
adc bl, al
lea ax, qword ptr [rsi + rbx + 57]
test al, 42
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, -115
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
setnb dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
