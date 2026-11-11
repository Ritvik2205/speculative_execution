.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add bl, sil
setb dl
or sil, -44
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 89
test dil, -126
btc eax, 220
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
