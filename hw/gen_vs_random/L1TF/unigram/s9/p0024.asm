.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rdi
cmovnl dx, di
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
lea esi, qword ptr [rcx + rcx + 79]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
lea bx, qword ptr [rdx + rbx + 26600]
jmp .bb_0.1
.bb_0.1:
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
test dil, sil
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
imul ax, dx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 82
neg bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
