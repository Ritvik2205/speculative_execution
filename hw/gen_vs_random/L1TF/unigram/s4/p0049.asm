.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ecx
add dl, 109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 37
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 72
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
btc esi, eax
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
add ax, bx
adc eax, ebx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
add cx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
