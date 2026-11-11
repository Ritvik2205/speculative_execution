.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor al, sil
or cl, 119
xor si, 80
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
btc ax, cx
or rax, 1461812833
xor cl, dl
test bl, sil
and al, -54
or dl, sil
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
