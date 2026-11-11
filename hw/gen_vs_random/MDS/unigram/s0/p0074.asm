.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 47
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
bt edi, 254
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
cmovle ecx, eax
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
or ecx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rdi, 42
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 48
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
cmovz edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
