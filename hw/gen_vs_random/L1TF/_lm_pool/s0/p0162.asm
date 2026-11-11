.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and bl, cl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add cl, -36
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 37
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
sbb dl, -26
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
