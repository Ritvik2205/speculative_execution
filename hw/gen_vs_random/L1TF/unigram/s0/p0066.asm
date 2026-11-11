.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, ax
cmovnp rax, rax
sbb ebx, 57
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
lea eax, qword ptr [rdx + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or cl, cl
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb rdx, 94
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rbx]
or bl, bl
add bl, -53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
