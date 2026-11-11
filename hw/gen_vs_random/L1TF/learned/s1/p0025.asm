.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 52
and al, dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
test al, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
test al, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
