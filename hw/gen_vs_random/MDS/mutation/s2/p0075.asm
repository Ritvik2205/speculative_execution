.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 20 # instrumentation
cmovp dx, di
or cl, dl
test cl, bl
cmovz rdx, rsi
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts di, 37
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
bts esi, 82
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and cl, 78 # instrumentation
cmovs ax, dx
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
xor di, 40
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
cmovz cx, bx
and rax, 1886208862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
