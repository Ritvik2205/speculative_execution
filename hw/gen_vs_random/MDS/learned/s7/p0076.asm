.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
test eax, 424329527
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xor sil, -46
xor sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
xor bl, -27
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, 81
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, 54
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
