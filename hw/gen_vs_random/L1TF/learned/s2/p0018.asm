.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, dx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp al, 27
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and dl, cl
xor al, cl
test al, -32
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
and ax, 7954
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
