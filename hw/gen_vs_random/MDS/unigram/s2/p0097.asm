.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 7
or rax, -141551502
and bl, 20 # instrumentation
cmovo eax, edi
and dl, 1 # instrumentation
cmovl bx, di
xor eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
cmovnle bx, dx
and al, -82 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
test al, 22
cmovb ebx, eax
and bl, -82 # instrumentation
cmovz esi, ecx
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
cmovnz di, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and al, 42 # instrumentation
cmovz ebx, ecx
and dl, -19 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
