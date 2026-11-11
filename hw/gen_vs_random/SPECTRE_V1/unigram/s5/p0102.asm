.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb esi, 16
lea bx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
setbe bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
sbb dil, -106
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
