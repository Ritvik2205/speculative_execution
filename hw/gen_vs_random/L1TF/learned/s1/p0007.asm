.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
add cl, bl
mov eax, edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test sil, 29
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 57
lea rax, qword ptr [rcx + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
