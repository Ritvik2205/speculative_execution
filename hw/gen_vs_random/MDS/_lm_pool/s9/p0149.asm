.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and al, -114
test dl, bl
or al, bl
and cl, 79
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and al, bl
or al, -17
or al, -78
and al, dl
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
xor ax, 23633
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
