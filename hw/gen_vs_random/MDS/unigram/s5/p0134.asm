.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, si
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
cmovnz dx, cx
cmovo di, si
bts cx, si
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
test bl, al
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and bl, 20 # instrumentation
cmovo eax, esi
xor dil, dl
cmovs di, di
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovs ax, bx
test rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 31
or bl, -54
cmovp di, si
test rdx, 4
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
