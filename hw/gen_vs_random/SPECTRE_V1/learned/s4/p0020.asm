.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add ax, cx
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
or dil, 98
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
adc cl, -19
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sub cl, -21
lea ax, qword ptr [rcx]
jl .bb_0.4
jmp .exit_0
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
