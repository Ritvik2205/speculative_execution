.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
btr eax, 231
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dl, 70 # instrumentation
sbb dil, 67
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
add al, al
cmovp rsi, rax
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
