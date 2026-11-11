.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, bx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add ax, 23362
or al, cl
cmp rcx, 15
or ax, -114
add al, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
