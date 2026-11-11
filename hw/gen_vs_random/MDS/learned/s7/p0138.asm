.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and dl, -73
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
btc si, 43
test dl, bl
and dl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and dil, 125
or dl, sil
and al, al
xor sil, 27
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 17
and al, sil
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
