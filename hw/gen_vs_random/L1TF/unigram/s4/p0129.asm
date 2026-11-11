.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
xor dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
cmovb cx, ax
sub ecx, 89
jmp .bb_0.1
.bb_0.1:
sub bl, al
dec dx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
add sil, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
add bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
