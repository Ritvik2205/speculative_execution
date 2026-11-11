.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
bt si, bx
or al, cl
xor bl, -27
or al, 16
and dil, dl
xor dil, sil
or bl, -54
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
btr ax, cx
or rsi, 77
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
or sil, dil
and ax, -122
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
not sil
test cl, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
