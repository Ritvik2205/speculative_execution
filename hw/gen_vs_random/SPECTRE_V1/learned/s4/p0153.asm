.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor al, -41
adc bl, bl
neg ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
movsx ax, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
