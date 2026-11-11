.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 52
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
lea rdi, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, dil
movsx edx, ax
sbb al, -114
add al, 123 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
add al, cl
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
cmovp cx, di
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
