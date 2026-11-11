.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or dil, -41
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and al, 84
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
not dl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test dl, 27
xor al, -19
cmovnbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
