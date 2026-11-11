.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
cmp edi, 11
xor bl, 38
cmovns rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and dil, -22
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
