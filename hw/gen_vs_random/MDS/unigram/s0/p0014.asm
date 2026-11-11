.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdi, rbx
or dl, -115
and bl, 47
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
or rdi, 67
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and edx, 64
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rax, -1909598591
and al, -56 # instrumentation
cmovl rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and edx, 36
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
