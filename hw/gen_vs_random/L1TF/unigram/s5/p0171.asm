.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rax
lea rbx, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and al, bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test rsi, rbx
cmovnz rax, rdi
inc dil
setns dl
sub ebx, 82
sub eax, 83
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 61
bts eax, edi
sub rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
