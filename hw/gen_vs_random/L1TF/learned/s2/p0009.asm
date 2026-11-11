.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 36
jmp .bb_0.1
.bb_0.1:
btc esi, edi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb bl, al
and di, 88
test bl, 84
jmp .bb_0.3
.bb_0.3:
test ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
