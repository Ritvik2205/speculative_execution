.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
adc ecx, edx
not dl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb cl, 83
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 18
btc esi, esi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 96
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
xchg edx, esi
cmovb rax, rcx
cmovbe edx, ebx
sbb rdx, 25
or cx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
