.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 37
mul rcx
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -23
test al, 40
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
test cl, -24
jmp .bb_0.2
.bb_0.2:
test al, 42
setb cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and al, bl
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
