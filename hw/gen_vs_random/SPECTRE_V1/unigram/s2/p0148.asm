.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
or sil, sil
xor al, 54
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
neg rax
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 38
btr bx, cx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
lea rdx, qword ptr [rax + rbx + 43]
xor rax, rcx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
lea ax, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
