.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or al, 37
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor al, 8
and al, 75
test dl, 48
test al, -81
bt edi, ebx
and al, al
xor al, 9
and bl, al
jmp .bb_0.1
.bb_0.1:
and ax, 19740
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or rdx, -48
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
