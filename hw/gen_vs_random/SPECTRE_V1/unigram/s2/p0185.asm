.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
mov cl, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
xor bl, -38
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
adc ebx, 57
add rdi, 87
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 34
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
test dil, -116
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 47
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
