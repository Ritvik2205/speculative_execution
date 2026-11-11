.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
not bl
xor esi, 9
bts rax, 77
and bl, al
and dil, 125
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test cl, 91
and bl, 68
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or sil, -49
jmp .bb_0.2
.bb_0.2:
test sil, -96
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
