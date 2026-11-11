.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
mov cl, al
jmp .bb_0.1
.bb_0.1:
cmovnle rax, rdi
cmp cl, 57
and al, cl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jmp .bb_0.2
.bb_0.2:
test al, 15
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
