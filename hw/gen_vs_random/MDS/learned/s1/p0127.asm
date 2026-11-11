.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
bt ebx, esi
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
add dil, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
bt eax, eax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
cmovnbe rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
test al, 74
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
cmovo dx, cx
not cl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
or cx, 10
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
sub rax, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
