.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 3
test sil, 47
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
movzx dx, dl
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
inc rax
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
cmovnl rbx, rdx
add dl, dil
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
sbb dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
