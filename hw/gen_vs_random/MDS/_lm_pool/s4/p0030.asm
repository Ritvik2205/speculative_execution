.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, di
xor bl, -102
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
bt si, dx
or bl, cl
jmp .bb_0.1
.bb_0.1:
bts rbx, rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor cl, 98
and dx, 3
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
bts rcx, 42
or rax, -1561934807
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
