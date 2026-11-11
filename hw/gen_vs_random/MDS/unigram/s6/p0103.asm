.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and al, -103
cmovo rdi, rdi
cmovz di, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and di, si
and bl, bl
test dl, dl
or bx, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rax], bx
xor al, 9
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovz rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
