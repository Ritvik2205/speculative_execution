.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 20 # instrumentation
cmovp dx, di
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts esi, 82
bts di, 37
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
cmovz rdx, rsi
and rax, -2058103810
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
or cl, dl
and cl, 78 # instrumentation
cmovs ax, dx
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
bt cx, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
cmovz cx, bx
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
