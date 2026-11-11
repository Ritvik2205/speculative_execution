.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 5
cmp sil, 25
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 23
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
imul edi
add bl, -5 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 13
mul cx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmp eax, esi
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
