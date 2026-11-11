.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
test sil, 97
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
cmovnl rbx, rdx
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
add dl, dil
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
