.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
xchg al, cl
and bl, dl
lea eax, qword ptr [rcx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea cx, qword ptr [rax]
lea ecx, qword ptr [rdx + rcx + 56]
mov cl, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
