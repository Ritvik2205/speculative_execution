.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
sub eax, 66
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmovnl ax, di
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
add dl, -57 # instrumentation
setz sil
cmovbe si, si
xchg rdi, rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
add bl, 10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 56
seto dl
add bl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
xchg ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
