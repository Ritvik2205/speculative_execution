.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 78 # instrumentation
cmovs ax, dx
and rax, -2058103810
cmovz cx, bx
bts esi, 82
cmovz rdx, rsi
and al, 20 # instrumentation
cmovp dx, di
bt cx, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
xor di, 93
or cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
test cl, bl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
bts di, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
