.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
mov sil, al
test al, cl
or dil, -78
or ax, -4210
xor sil, dl
or al, sil
test al, -7
not al
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and ecx, -104
and ax, 339
jmp .bb_0.1
.bb_0.1:
xor dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
