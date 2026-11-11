.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, -105
cmp dil, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 20
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
