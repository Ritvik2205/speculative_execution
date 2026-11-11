.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, bx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor rax, -270810088
or sil, -49
xor bl, dl
and rdx, 31
jmp .bb_0.2
.bb_0.2:
or al, 25
test dil, -80
or sil, -49
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
