.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
test dil, cl
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and ax, -16061
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
not dl
xor cl, dil
test al, cl
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
or al, dil
and rsi, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
