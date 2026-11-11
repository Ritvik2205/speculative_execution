.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 69
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdi + rcx]
xor rbx, 50
inc al
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
add dl, -29 # instrumentation
add dl, -70 # instrumentation
setnp dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
xor dl, 71
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
