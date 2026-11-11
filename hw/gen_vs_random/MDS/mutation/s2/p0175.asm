.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
not rax
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
test edx, -1561252782
cmovp rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
bts ebx, ebx
or al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
xor eax, 1640090871
btr bx, 100
and dl, 125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and cx, -8
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
cmovz di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
