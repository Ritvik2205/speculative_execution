.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
test eax, -409834435
xor edi, 38
xor rax, rcx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
bt rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
btc rdx, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
test al, -7
and bl, cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or eax, -1777347252
and al, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
