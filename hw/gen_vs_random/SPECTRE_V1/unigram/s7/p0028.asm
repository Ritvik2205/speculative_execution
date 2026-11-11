.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
or ebx, -124
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
sub dx, -23
lea rdi, qword ptr [rsi + rdi + 74]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 90
inc rdi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
movsx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
