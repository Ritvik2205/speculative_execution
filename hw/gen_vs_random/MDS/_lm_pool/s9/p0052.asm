.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, dx
xor cl, 55
xor al, 9
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
xor dl, cl
xor al, -89
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
or rdx, -109
or ax, 30524
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test bl, al
and dl, -73
and rax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
