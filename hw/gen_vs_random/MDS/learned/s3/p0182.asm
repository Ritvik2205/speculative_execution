.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, dil
or ax, 16560
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
jmp .bb_0.2
.bb_0.2:
test dil, -51
and bl, 68
cmovle bx, cx
xor al, 55
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
