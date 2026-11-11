.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 60
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 92
sub bl, bl
xchg edx, eax
bt rax, rcx
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 94
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 13 # instrumentation
setns bl
xchg dil, al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
add al, -94 # instrumentation
cmovnle rbx, rdx
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
