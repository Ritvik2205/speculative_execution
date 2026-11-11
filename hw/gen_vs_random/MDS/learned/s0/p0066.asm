.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test al, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor sil, -15
or al, -78
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and al, sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor dil, al
test al, 127
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
btc bx, 104
and rax, -978188247
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
