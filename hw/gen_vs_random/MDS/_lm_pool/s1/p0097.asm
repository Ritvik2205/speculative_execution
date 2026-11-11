.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
xor al, -89
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
test edx, -372470678
and rsi, 19
and sil, -69
not bl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.3
.bb_0.3:
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
sub al, 33
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
