.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
cmp rcx, 55
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -68
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 21
xor cl, al
or dl, dl
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
