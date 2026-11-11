.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test sil, 17
jmp .bb_0.1
.bb_0.1:
or al, -22
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
jmp .bb_0.2
.bb_0.2:
test rbx, 35
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 9
and bl, 68
not al
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
or sil, dl
or si, 94
and cx, -8
btr dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
