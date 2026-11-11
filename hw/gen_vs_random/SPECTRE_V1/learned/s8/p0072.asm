.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 12
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor al, cl
cmovb ecx, edi
mov sil, dl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
xor bl, sil
lea bx, qword ptr [rdi + rsi + 41]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
or bl, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
