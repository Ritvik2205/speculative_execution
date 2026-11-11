.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
cmp edi, edi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 23
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
cmovbe rdx, rax
cmp bl, dil
add dil, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sbb ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
