.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and dl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
test bl, -14
and cx, -8
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test al, 91
and dx, 60
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and dil, al
btc ax, 47
and ax, 13090
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
