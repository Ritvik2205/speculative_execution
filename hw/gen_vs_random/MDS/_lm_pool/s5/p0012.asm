.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -127
or bl, cl
test dil, -51
or al, -24
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
test dil, al
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bt ax, di
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test bl, -14
and dl, al
and dl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
