.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
or dl, 8
cmp dl, bl
lea rdx, qword ptr [rdi + rbx + 35553]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
bt rsi, rdx
inc rax
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
sub al, -47
lea ecx, qword ptr [rdx + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
setz cl
cmovle rbx, rsi
lea rcx, qword ptr [rax]
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
