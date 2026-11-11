.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, sil
test dx, 34
lea ax, qword ptr [rax + rdi + 18]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 96
sbb bl, -88
test esi, eax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
bts ebx, 62
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 59
btc rbx, 18
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
add dl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and si, 81
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
