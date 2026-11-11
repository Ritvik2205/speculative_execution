.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 109
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
xchg edx, ecx
xor eax, ecx
add bl, 89 # instrumentation
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
or dx, 55
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
cmovnle rdi, rax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
