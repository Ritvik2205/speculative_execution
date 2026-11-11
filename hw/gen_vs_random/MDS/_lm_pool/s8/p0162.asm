.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test al, 91
and al, 14
xor al, 8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
or al, bl
and rax, -978188247
xor sil, -15
or sil, -78
and al, bl
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
