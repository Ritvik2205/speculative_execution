.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
test al, 91
or dil, -76
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
or dl, cl
and dil, bl
xor dil, -70
or al, -24
jmp .bb_0.1
.bb_0.1:
and dx, 60
xor rdx, -59
and sil, -56
xor si, 91
test rsi, 52
xor di, 40
or al, dil
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
