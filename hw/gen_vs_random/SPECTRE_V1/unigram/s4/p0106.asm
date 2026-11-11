.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
lea cx, qword ptr [rsi + rcx]
adc rsi, 18
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
movsx bx, sil
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
mov al, al
xor dx, 70
mul al
add cl, 56 # instrumentation
cmovns eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
