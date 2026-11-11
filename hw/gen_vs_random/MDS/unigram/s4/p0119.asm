.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
and sil, cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 84
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
bt ebx, 107
and cl, -109 # instrumentation
cmovns rcx, rcx
test al, 74
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 31
and bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 7
cmovp si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
