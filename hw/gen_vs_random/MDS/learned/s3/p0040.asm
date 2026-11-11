.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rdx, 32
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or al, dl
test dil, -80
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
not bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or rsi, 1
and dil, cl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
btc dx, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
