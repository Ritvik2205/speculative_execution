.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add sil, 2
add bl, 39 # instrumentation
cmovo eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
lea ax, qword ptr [rdx + rcx + 43552]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 74
add bl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
