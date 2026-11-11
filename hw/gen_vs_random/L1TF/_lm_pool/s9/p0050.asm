.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, dx
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
test al, -82
xor ax, 27703
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 70
test bl, -92
xor cl, 89
jmp .bb_0.1
.bb_0.1:
test bl, 45
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
cmovbe eax, ecx
or rax, -443578116
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
