.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
lea eax, qword ptr [rcx]
lea rdi, qword ptr [rcx + rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, sil
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc cl, al
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 53
cmovnp dx, bx
cmp dil, 56
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
