.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
xor al, dil
or sil, -49
and al, -55
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and dil, -62
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and al, dil
test dl, bl
jmp .bb_0.2
.bb_0.2:
test bl, -114
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.3
.bb_0.3:
and al, dl
test rdx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
