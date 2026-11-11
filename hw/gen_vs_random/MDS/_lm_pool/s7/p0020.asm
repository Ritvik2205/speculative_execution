.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and ax, 29207
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
bt ax, dx
and dil, dil
xor al, 34
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test rax, 337705873
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
btc edi, 230
xor rsi, -117
test cl, al
xor al, cl
and eax, 561041355
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
