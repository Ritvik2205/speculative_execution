.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
test sil, 13
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], -31
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, al
xor cl, -40
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
sbb eax, 1332762061
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
add dl, 58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
