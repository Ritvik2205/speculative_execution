.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 110
add al, -112 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
sub dl, dil
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
xchg edx, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
cmovb eax, esi
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sbb rsi, 54
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
bts rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
