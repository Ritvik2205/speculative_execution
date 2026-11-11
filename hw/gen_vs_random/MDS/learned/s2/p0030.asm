.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
not dil
xor bl, al
xor rbx, 89
xor ax, -23364
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
btr ebx, ecx
or cl, bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
btr ax, si
btr bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
