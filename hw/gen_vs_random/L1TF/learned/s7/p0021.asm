.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
adc al, sil
test bl, 45
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 31
and al, bl
inc ecx
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
