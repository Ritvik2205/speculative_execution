.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
movzx esi, al
add al, 40 # instrumentation
lea ax, qword ptr [rsi + rsi]
add bl, -41 # instrumentation
xchg sil, al
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
btc edi, 44
and dl, 29
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
adc al, 72
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
lea cx, qword ptr [rbx + rax]
cmovns rcx, rcx
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
