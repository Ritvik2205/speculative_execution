.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor sil, sil
and dil, sil
or rax, -2144083737
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test sil, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and cl, -118
cmp dil, bl
cmp al, dil
xor sil, cl
and si, -74
xor di, 18
sbb ax, 10407
movsx di, al
and dl, bl
or al, -50
test ecx, -304234347
movsx ax, cl
and dl, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
