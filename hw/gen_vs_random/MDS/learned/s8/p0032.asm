.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
test al, sil
test dil, al
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and rsi, 19
and dil, bl
jmp .bb_0.2
.bb_0.2:
test eax, 343548072
xor si, 91
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or dl, sil
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
