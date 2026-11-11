.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 96
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 81
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 16
adc dx, 98
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
xor bl, 34
lea bx, qword ptr [rsi + rcx + 68]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
setno dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
adc al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
