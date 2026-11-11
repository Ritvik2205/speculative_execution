.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
setno sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
or dl, al
sbb dl, cl
jmp .bb_0.3
.bb_0.3:
bt esi, ecx
cmp ax, 7046
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
