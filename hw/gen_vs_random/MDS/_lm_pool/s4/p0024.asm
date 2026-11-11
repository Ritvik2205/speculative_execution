.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and sil, 74
xor sil, -15
and ecx, -104
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 81
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
btr dx, cx
and cl, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
xor rax, -1128378406
xor dil, 124
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
bt cx, dx
or bl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
