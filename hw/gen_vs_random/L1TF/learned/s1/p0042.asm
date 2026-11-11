.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
test rax, -866236703
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
lea edx, qword ptr [rax + rbx + 81]
sbb rax, -1477844571
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
bt edi, 230
cmovnbe si, bx
lea si, qword ptr [rbx + rdi + 96]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
