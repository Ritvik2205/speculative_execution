.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and bl, 68
xor rsi, -117
xor dl, bl
btc ax, di
cmovle di, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and esi, 93
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test eax, 298249463
and al, sil
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
