.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
add al, 66 # instrumentation
cmovnp eax, ebx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 79
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
