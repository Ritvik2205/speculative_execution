.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and dx, 3
xor dl, dil
jmp .bb_0.1
.bb_0.1:
test sil, dl
and sil, al
test cl, dil
xor sil, 94
or sil, dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
or sil, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and dil, -39
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
