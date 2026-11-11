.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dil
btc di, 233
and dil, 125
test al, cl
or al, bl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or al, -58
cmovno di, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
or al, -24
or al, al
or ax, 30524
xor al, -19
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
