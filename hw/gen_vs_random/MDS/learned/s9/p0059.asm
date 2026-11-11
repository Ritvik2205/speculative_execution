.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or bl, -54
test dl, dl
test al, -81
test ecx, -1843375753
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and dil, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor cx, -18
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
and ax, 29207
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
