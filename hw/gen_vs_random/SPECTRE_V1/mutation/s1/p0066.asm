.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and dil, 98
lea edx, qword ptr [rbx + rcx + 37832]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cdq
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
