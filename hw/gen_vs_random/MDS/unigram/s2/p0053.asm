.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, bx
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and cl, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 81
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test dl, sil
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
or dil, cl
and sil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
