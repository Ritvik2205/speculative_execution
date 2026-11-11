.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
movzx edi, dx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
lea ecx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
cmovnbe rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
test dl, 113
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rdx + rsi]
sbb si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
