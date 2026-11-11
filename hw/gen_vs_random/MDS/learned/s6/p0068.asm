.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
bts rsi, rcx
and dl, cl
test bl, 65
and cl, dl
test bl, -14
test eax, -409834435
xor cl, 55
jmp .bb_0.1
.bb_0.1:
test al, -7
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
test sil, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor sil, al
test al, dil
xor si, 91
jmp .bb_0.2
.bb_0.2:
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
