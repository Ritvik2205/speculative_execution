.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
test bl, -8
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
sub al, dil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
bt edx, edi
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
add ax, 8031
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp ax, di
xor al, -89
cmovnbe ax, dx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
