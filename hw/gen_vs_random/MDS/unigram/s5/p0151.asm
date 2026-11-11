.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
test ebx, -2015966884
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 74
test dil, -51
and rdx, 97
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
cmovnb dx, bx
xor cl, bl
btc rax, 59
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
bt si, di
cmovnbe rdi, rax
and bl, 65 # instrumentation
cmovnbe cx, dx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
