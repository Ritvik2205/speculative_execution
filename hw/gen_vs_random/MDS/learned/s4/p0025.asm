.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -88
test sil, bl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
xor sil, al
or dx, 125
and al, 87
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 57
test al, dil
and cx, -2
and al, bl
and dil, al
xor sil, 110
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
