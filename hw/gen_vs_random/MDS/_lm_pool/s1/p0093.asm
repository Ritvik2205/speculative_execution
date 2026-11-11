.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
test bl, -14
xor al, 55
bts rcx, rax
jmp .bb_0.1
.bb_0.1:
or cl, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or al, -58
xor sil, cl
test bl, sil
or dil, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
not cl
and dil, -62
and dil, bl
xor al, 9
lea rcx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
