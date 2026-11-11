.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
test dl, sil
add al, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add ecx, 87
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and cl, al
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdi]
xchg rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
imul ebx, ebx, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
