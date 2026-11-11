.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, cl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 65
bt edx, esi
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
xor bl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
xchg rsi, rdi
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
test di, cx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
mov bl, al
and ax, -13240
lea eax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
