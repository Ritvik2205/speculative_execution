.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 85
and rax, 79
xor al, 34
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
test al, -7
cmovnp rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 7
test al, bl
or dil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and sil, -56
test si, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
