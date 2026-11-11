.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, 132782095
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
adc rcx, 18
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
add al, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
xor cl, sil
lea esi, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 53
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
