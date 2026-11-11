.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 18
cmovb eax, eax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 55
cbw
setnl dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 44
imul bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
lea cx, qword ptr [rdx + rbx + 77]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
