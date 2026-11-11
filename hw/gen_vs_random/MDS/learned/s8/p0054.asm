.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and sil, al
test al, bl
or al, 16
bts rbx, rsi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and dil, -39
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
test al, sil
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor al, cl
test cl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
