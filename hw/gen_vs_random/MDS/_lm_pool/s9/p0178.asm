.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and al, cl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
xor dil, dl
xor sil, 94
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor rdx, -59
xor rcx, -2
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and cl, 79
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 47
test cl, 54
or dl, -8
or cl, 119
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
