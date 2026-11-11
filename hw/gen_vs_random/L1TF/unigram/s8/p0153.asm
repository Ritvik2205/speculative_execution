.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, dx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
add al, 80 # instrumentation
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add edx, 56
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
neg dil
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
lea rbx, qword ptr [rax + rbx + 47]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
