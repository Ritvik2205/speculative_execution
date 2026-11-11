.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 2
and bl, 68
xor ax, -4010
and al, 35
xor bl, dil
and bl, 68
test bl, dil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
