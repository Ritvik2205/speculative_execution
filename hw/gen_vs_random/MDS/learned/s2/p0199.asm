.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or sil, dil
and edi, 23
or al, al
jmp .bb_0.1
.bb_0.1:
test al, 91
and sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or sil, sil
test eax, 158941032
and cl, -111
jmp .bb_0.2
.bb_0.2:
xor bl, -102
test dl, bl
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
