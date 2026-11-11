.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sub bl, al
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 3
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, al
lea rcx, qword ptr [rbx + rbx + 11064]
imul rdi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ecx
add bx, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
