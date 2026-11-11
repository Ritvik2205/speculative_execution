.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
or cl, dl
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
test cl, bl
xor di, 93
and al, 20 # instrumentation
cmovp dx, di
cmovz rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
bts esi, 82
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts di, 73
cmovz cx, bx
and cl, 78 # instrumentation
cmovs ax, dx
and rax, -1931765367
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
