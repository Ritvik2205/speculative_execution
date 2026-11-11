.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, si
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 46
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
imul al
xor bl, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 19
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
adc ecx, 66
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb bl, sil
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
