.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
xor dil, 8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 85
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovb ax, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
bt eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
cmovnb rdi, rax
cmovz ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 56
and bl, -56 # instrumentation
cmovnle ebx, edi
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
