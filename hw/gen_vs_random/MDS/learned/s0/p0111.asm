.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
test bl, -114
and di, 99
or cl, 6
xor ax, -1005
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
btc si, 43
or al, -24
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test dil, -80
test sil, bl
jmp .bb_0.3
.bb_0.3:
or al, dil
or al, dil
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
