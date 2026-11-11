.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bt edi, esi
setnle al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
adc ax, 87
add bl, 113 # instrumentation
setbe al
imul sil
cmp eax, -127
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
add dil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
adc si, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
