.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
btr ax, di
xor sil, 27
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
xor dl, -43
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
test dil, -51
or eax, 1725503461
and bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
bt ax, si
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
