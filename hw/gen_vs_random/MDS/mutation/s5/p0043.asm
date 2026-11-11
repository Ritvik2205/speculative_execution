.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts di, 73
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rax, 4
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
bts esi, 61
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
xor di, 93
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
test cl, bl
and cl, 78 # instrumentation
cmovs ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and al, 20 # instrumentation
cmovp dx, di
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
bt cx, ax
cmovz cx, bx
cmovz rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
