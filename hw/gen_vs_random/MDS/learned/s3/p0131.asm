.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, dx
or dil, -78
xor cl, dil
or sil, al
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 88
and ax, 29207
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
test al, -7
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
