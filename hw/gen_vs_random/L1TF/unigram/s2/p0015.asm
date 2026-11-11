.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
add rcx, 55
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
sub rcx, rbx
cmovb eax, esi
jmp .bb_0.1
.bb_0.1:
add ebx, 2
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
xor edi, esi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
dec di
lea ecx, qword ptr [rsi + rdx + 70]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmp cx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
