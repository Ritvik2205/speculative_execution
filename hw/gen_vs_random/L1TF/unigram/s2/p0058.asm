.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 29
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
not cl
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
mov eax, esi
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
setp cl
add ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
xchg ebx, eax
cmovnle rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
or dil, sil
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
