.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovnl dx, bx
not bx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rcx
movzx ecx, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
bts di, 144
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
sub bl, cl
cmovnl edi, esi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test al, bl
sub ax, -15315
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
