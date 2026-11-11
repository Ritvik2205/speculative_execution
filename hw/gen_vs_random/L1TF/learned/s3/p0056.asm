.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
sub dl, 64
btc di, cx
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
bt rsi, rdx
jmp .bb_0.2
.bb_0.2:
btc di, 237
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
bt esi, 54
sbb sil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
