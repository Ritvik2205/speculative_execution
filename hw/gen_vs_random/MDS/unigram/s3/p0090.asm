.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -30938
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
cmovb ax, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 56
cmovo rsi, rax
bt edx, 75
bt rsi, rcx
btr si, 67
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 66
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and cl, dil
cmovb di, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
xor al, 78
and dil, 122 # instrumentation
cmovnb rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
