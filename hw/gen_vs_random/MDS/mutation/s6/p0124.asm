.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
bts di, 37
and al, 20 # instrumentation
cmovp dx, di
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
cmovz cx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and cl, 78 # instrumentation
cmovs ax, dx
xor di, -83
and rax, 1886208862
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts esi, 82
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
