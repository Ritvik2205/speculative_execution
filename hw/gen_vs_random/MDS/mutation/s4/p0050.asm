.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, ax
and rax, 1250429750
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
cmovz cx, bx
or cl, dl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
xor di, 93
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
test cl, bl
and cl, 78 # instrumentation
cmovs ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
bts esi, 61
cmovz rdx, rsi
bts di, 37
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and al, 20 # instrumentation
cmovp dx, di
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
