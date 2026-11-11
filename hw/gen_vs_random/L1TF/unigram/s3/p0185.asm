.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
or ebx, 61
cmovb bx, si
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
lea rsi, qword ptr [rcx]
cmovno si, si
and cl, cl
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
lea ecx, qword ptr [rax + rdi + 67]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 40
cmovno si, si
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
