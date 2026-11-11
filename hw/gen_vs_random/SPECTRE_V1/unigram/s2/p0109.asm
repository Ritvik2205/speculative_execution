.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ebx, eax
lea eax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
cdq
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
bts cx, 87
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
cmovl bx, di
bt di, bx
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 14
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
