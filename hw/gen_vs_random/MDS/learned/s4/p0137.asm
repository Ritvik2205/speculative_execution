.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or dl, cl
and dl, bl
xor al, bl
jmp .bb_0.1
.bb_0.1:
test al, sil
test eax, -409834435
and rax, -978188247
and rcx, -63
bt ax, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
and di, 99
btc di, 164
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
