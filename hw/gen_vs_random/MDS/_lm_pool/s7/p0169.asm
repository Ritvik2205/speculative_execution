.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test al, sil
btr ax, bx
test bl, cl
and bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xor cl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or bl, -54
test dil, al
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
