.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
lea ebx, qword ptr [rcx]
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
xor sil, dil
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
imul dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 73
add bl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
sbb dil, dil
xor ebx, eax
cmp rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
