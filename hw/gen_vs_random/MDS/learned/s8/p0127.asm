.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or sil, dil
and ax, 31082
btr bx, di
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test dil, al
and dil, al
and dil, 125
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
test al, -7
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
xor dl, cl
xor si, 80
or al, sil
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
