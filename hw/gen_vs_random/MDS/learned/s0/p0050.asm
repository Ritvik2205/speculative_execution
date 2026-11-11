.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo si, ax
and al, -114
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
or bl, -62
and dil, sil
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 627810357
test rax, rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
btc eax, 40
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
btc dx, 146
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
