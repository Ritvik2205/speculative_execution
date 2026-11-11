.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
cmovns rax, rdx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 22
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
sub rbx, -128
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
lea di, qword ptr [rcx]
mul dil
xchg si, bx
xor ax, -2537
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
