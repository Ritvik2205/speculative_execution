.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
btc bx, 104
xor ebx, ebx
cmovo esi, edx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
cmovnz ebx, edx
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and dl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
or rax, 1020005579
bts cx, dx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
or rsi, rbx
and cl, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
