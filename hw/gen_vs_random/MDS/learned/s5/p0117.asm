.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
and rdi, 34
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 14
or dl, bl
or dil, -78
and dl, al
or esi, -110
or bl, -62
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
bt si, dx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
