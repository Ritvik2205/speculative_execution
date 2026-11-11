.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or bl, 100
xor dl, -19
and si, -121
test rdi, 65
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or al, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.2
.bb_0.2:
btc dx, 67
xor di, 40
and edi, 23
or al, dil
test dl, bl
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
