.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
not sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or ebx, esi
and bl, 68
xor rdi, -9
or al, -24
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
xor bl, -27
xor rdi, -9
xor cl, dil
or ax, -23697
test sil, 17
test rax, 1000448998
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
