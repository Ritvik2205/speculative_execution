.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp dx, si
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
add al, 110 # instrumentation
cmovb rbx, rax
inc ebx
lea ecx, qword ptr [rcx + rcx + 95]
dec dil
cmovnle rcx, rdx
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe bx, dx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
lea ecx, qword ptr [rbx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
sub rax, rsi
lea ecx, qword ptr [rbx + rbx + 100]
or rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
