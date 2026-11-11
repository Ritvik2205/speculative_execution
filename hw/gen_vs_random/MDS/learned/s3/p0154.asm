.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor dil, 8
xor dl, al
jmp .bb_0.1
.bb_0.1:
xor bl, -27
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor al, cl
test al, bl
and dil, -39
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
