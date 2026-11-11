.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edx, edx
xor bl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test rax, -359674714
test dl, 9
and al, sil
jmp .bb_0.1
.bb_0.1:
not sil
and al, sil
xor dil, bl
or cl, 6
or cl, al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
