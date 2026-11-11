.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and bl, 89
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dl, 42 # instrumentation
lea eax, qword ptr [rdx + rax]
sbb al, dl
and bl, bl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 49
and sil, bl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
