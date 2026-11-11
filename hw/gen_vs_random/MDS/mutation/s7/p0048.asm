.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
btr rbx, 63
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
btc bx, ax
and bl, -28 # instrumentation
cmovl rdi, rdx
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
or edi, eax
and dl, bl
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
