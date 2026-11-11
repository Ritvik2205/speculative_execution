.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and cx, -8
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and edi, 23
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
or dx, 125
test dil, al
xor al, 34
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
