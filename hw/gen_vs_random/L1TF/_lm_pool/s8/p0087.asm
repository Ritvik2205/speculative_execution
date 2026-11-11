.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -68
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
xor dl, al
sub bx, 61
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
