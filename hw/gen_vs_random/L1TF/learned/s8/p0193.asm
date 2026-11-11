.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 30
and cl, 28
and ax, 26813
xor sil, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor dil, -42
or al, cl
jmp .bb_0.1
.bb_0.1:
xor rcx, rdx
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 75
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
