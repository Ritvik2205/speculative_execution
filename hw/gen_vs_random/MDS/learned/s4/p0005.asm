.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
test al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and bl, 68
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or cl, dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and dil, sil
and ax, -4410
not sil
jmp .bb_0.4
.bb_0.4:
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
