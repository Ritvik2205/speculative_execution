.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 93
lea rdx, qword ptr [rcx + rdx + 70]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
sub al, 26
cmp si, 22
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 43
not di
lea rdx, qword ptr [rbx + rdi]
cmovs si, ax
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
