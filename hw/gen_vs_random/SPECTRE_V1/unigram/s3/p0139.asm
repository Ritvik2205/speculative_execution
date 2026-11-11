.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp edx, 44
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
cmp al, dl
and dl, dl
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
bts dx, 26
setnle cl
sbb rcx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
