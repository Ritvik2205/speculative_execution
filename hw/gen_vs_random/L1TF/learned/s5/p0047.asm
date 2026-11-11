.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
not dil
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
or rsi, 84
or al, dl
or si, 36
xor dil, bl
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
