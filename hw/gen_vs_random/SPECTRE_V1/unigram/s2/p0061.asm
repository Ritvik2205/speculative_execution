.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
sbb dil, dl
xchg cl, cl
sub sil, dil
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
lea eax, qword ptr [rdx + rdx + 39359]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -58
sbb al, 49
cmovle rbx, rax
add bl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
add cl, 72 # instrumentation
cmovnl ax, cx
cmp edx, ecx
cmovnle cx, bx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
