.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
lea bx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
bts rsi, 96
and al, -68
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 36
or sil, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
jmp .bb_0.2
.bb_0.2:
xor cl, dil
and di, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
