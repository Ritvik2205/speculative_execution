.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 70
lea di, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 23
bt edx, ecx
lea rax, qword ptr [rbx + rdx + 16]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 3
and al, -68
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
