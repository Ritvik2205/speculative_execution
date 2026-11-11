.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
adc rcx, 80
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
movsx rax, dil
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 50
lea ecx, qword ptr [rsi + rdx]
sub ecx, eax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
add dil, -42 # instrumentation
lea esi, qword ptr [rdi]
lea edx, qword ptr [rcx + rbx + 82]
lea rcx, qword ptr [rbx + rcx + 56]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
