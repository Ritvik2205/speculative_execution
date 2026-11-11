.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test bl, -14
test dl, bl
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or al, bl
and al, bl
test rsi, 35
bts rsi, 205
test al, dil
xor dil, 124
xor sil, al
or ax, -14271
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
