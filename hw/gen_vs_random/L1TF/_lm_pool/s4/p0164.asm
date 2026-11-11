.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnp ax, dx
and al, -68
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 65
btc ax, dx
not sil
bt rdx, rax
lea rdx, qword ptr [rcx + rbx + 62]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
