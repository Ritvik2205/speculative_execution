.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea ecx, qword ptr [rax + rdx + 58]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and cl, 86
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rbx
add dil, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 33
sbb ebx, 78
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
