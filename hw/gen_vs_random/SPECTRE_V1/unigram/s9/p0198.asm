.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 90
lea eax, qword ptr [rbx]
lea ecx, qword ptr [rax + rax]
movzx di, sil
lea esi, qword ptr [rdx + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
