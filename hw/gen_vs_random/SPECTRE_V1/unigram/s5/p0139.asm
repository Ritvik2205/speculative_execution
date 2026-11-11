.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
cmovnp rdx, rax
cmp rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 95
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 64
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
test eax, 88788211
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 9
cmovb edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
adc cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
