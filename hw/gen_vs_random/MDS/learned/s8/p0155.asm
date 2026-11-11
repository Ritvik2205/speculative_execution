.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
xor bl, sil
xor cl, sil
test al, cl
test ebx, -2015966884
or al, 16
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
xor dil, 81
xor al, dil
and dl, -73
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test cl, bl
xor sil, dl
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
