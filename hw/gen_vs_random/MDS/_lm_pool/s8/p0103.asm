.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
and esi, 37
or al, cl
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
btc bx, ax
and dx, 60
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and bl, bl
or rax, -141551502
test dl, 9
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
