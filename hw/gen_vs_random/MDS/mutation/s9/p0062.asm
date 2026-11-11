.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz ebx, edi
btc ebx, 149
cmovnb dx, si
and rax, -2039117613
and ax, 5001
cmovp dx, bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rax, 79
not bl
or cl, dl
xor di, -83
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rax, 1886208862
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
bts di, 37
bt cx, ax
and cl, 78 # instrumentation
cmovs ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
