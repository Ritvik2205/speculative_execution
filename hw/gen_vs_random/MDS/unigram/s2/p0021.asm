.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
and al, 93
btr rdi, 64
test bl, bl
cmovz rbx, rdi
cmovle eax, esi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 82
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
jmp .bb_0.1
.bb_0.1:
cmovnb rbx, rbx
and dx, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
cmovnbe bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 8
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
xor edx, edx
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
or rdi, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
