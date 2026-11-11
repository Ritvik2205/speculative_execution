.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, dl
add al, -44
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
test sil, 47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
cmovnl rbx, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
add dl, dil
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
sbb dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
