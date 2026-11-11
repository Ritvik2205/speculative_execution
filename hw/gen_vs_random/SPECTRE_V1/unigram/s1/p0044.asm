.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edx, 38
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
cmovb edi, edi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test edi, 88
mov al, al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
lea ax, qword ptr [rbx + rdx]
inc sil
setnz cl
bt dx, 58
add bl, 112 # instrumentation
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
