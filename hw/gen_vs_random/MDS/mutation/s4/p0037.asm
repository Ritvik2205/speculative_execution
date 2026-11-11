.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz ebx, edi
btc ebx, 149
cmovnb dx, si
and rax, -1701787862
and ax, 5001
cmovp dx, bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rax, 1250429750
not bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and dl, dl
xor di, cx
test rax, rdx
btr dx, 47
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and ax, 31082
btc rdi, rcx
cmovnz ax, si
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
