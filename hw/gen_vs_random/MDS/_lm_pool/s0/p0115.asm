.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and sil, cl
or al, -22
test al, bl
btr ax, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rax
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
or dil, 16
and dil, sil
or sil, -78
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and ax, 19740
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
