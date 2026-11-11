.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
cmovno ax, cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rbx, rbx
adc ebx, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
setb dl
cmovnb ecx, esi
add al, 107 # instrumentation
lea edx, qword ptr [rdi + rcx + 12]
not rax
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
