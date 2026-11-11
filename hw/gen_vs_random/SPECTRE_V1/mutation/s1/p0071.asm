.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
test sil, -31
add al, 3
movzx dx, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
cmovnl rbx, rdx
sbb dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
inc rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
add dl, dil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
