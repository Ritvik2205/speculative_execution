.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor al, al
xor ecx, 9
lea di, qword ptr [rdx + rdx + 24]
xor cl, bl
inc esi
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
cmp dil, -58
mov si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
