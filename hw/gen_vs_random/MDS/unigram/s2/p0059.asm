.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, 43
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
xor dil, 81
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or ebx, -104
btr edi, edx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and cx, -8
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
not edi
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
