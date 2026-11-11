.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
xor al, 89
sbb dl, al
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
sbb bl, dl
add ebx, 2
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and si, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
