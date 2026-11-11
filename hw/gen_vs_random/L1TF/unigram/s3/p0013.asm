.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
btc ax, 89
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
add dl, 109 # instrumentation
sbb dl, 46
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 32
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
sub dl, 7
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
add al, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
xor ecx, 87
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
