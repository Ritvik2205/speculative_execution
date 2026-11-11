.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
adc rdi, -75
and cl, bl
cwd
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or bl, 89
setns dil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
add al, -125 # instrumentation
cmovb ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
