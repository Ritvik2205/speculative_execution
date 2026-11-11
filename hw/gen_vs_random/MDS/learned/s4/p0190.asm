.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -113
and dl, -73
and bl, sil
test al, bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 55
or di, 38
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
or al, dl
and al, -8
btr ax, si
xor rax, -843636050
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
