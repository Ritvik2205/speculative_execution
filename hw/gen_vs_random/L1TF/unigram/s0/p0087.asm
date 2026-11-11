.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, 63
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
cmovle si, si
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
inc dil
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 49
add cx, 59
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 51
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
