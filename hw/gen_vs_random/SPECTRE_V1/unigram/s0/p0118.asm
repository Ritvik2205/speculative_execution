.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
setnl dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor cl, -103
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
cbw
mov sil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
lea cx, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
xor bl, 34
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
