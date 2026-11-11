.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and bx, 39
test dl, dil
test sil, 41
or dil, -76
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
not sil
test al, bl
test ecx, -1843375753
not al
cmovle bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
