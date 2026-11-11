.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -103
adc dil, dil
btr ecx, 14
add dl, -6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
cmovo eax, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test ebx, 13
mov bl, 59
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rax + rdi + 68]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
cmovns rcx, rcx
movsx di, sil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
xor bx, 41
lea edx, qword ptr [rdi + rbx + 73]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
