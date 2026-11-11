.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test bl, sil
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
xor bl, -27
test sil, -96
and cl, dil
xor si, 80
or al, 37
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
btr edi, esi
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and bl, al
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
