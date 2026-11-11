.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and dx, 100
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
sub cl, al
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
lea bx, qword ptr [rcx + rdx]
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 100
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
