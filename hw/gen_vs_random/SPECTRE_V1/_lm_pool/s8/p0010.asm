.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
lea ax, qword ptr [rcx]
xchg rax, rdi
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
cmp al, -77
lea rdx, qword ptr [rdi + rax + 62]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
lea rcx, qword ptr [rbx + rdi + 70]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
