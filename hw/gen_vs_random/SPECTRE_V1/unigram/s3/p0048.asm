.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb esi, edi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 87
adc sil, cl
lea rsi, qword ptr [rdx]
adc al, -92
sub bx, 74
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
imul edi, edi, 17
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
lea cx, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 50
imul rdi
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
add cl, -56 # instrumentation
sbb rbx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
