.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
lea ecx, qword ptr [rdx + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
cmp dl, bl
or dl, 8
lea rcx, qword ptr [rax]
cmovle rbx, rsi
bt rsi, rdx
sub al, -47
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
setz cl
inc rax
lea rdx, qword ptr [rdi + rbx + 35553]
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
