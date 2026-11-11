.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 53
sbb rbx, -117
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 87
jmp .bb_0.1
.bb_0.1:
and esi, 35
imul rdx, rdi, 86
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
cwde
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
test rdx, rbx
cmp dil, dl
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
