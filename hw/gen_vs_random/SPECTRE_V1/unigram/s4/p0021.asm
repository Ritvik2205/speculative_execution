.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, -82
xchg al, sil
cwd
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
lea cx, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
movsx ebx, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
setnl al
and bl, -43
or cx, cx
imul eax
add rcx, 23
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
