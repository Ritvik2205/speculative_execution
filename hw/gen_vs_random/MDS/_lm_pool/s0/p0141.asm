.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
xor sil, 94
test dl, 9
bt ax, di
or rbx, -72
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or cl, 6
and sil, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
