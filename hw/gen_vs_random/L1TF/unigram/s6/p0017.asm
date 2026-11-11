.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
not ebx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
cmovnle dx, dx
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
cmovp esi, edx
and al, al
add bl, 89 # instrumentation
sbb sil, cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 56
cmovno edx, edx
and di, 86
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
lea dx, qword ptr [rdx + rsi + 56]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
