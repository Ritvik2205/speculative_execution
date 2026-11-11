.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 34
sub bl, -6
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 42
and al, cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
mov dil, dl
sub al, cl
lea rax, qword ptr [rdx + rcx + 56]
jmp .bb_0.2
.bb_0.2:
and ax, 32540
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
