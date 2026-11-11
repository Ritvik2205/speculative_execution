.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
bt rbx, rbx
and ax, -16061
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 22
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
not rbx
and ebx, 4
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
bts esi, 82
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or sil, dl
test edx, -372470678
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
