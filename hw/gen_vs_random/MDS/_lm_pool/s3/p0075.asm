.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
or dl, cl
and eax, -85386306
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and bx, 46
xor al, -4
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
btc di, dx
or ax, -4210
and cl, bl
and cx, -8
or ax, -7150
test cl, -86
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
