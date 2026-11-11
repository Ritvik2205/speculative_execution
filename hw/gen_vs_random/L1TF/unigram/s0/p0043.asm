.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
add dl, 44
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 92
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
sub al, sil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 19
xor cx, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
