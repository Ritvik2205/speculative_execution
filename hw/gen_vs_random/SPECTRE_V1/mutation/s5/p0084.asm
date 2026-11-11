.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle esi, edi
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
cmp rax, -1365488374
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
xor cl, 78
xchg dl, al
sbb eax, -417098439
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
