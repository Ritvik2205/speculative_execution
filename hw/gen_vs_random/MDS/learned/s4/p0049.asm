.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
btr cx, 136
xor bl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test bl, 65
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
jmp .bb_0.1
.bb_0.1:
btc ax, 99
xor al, 122
or al, 37
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
