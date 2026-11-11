.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, -704585563
movzx edi, di
cmovb rbx, rsi
test al, -126
add dx, -103
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
setp bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sub ax, -15315
sbb si, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmp dl, 71
neg ax
cmovnb esi, ebx
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
