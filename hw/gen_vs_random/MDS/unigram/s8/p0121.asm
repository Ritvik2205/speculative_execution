.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -82 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
not rax
cmovnb bx, ax
test edi, -1252846009
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 68
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test cl, 101
cmovnbe eax, edx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and al, 49
or al, -22
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
cmovnbe rax, rdi
or si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
bts rax, rsi
and eax, 366961170
bts rcx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
