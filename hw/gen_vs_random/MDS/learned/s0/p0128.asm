.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
test al, 22
and rdx, 85
and dl, bl
xor bl, 67
jmp .bb_0.1
.bb_0.1:
btr di, 89
and dl, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
not bl
or bl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 53
or al, 37
btr rsi, 207
test cl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
