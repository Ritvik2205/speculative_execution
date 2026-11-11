.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
xor al, 115
test cl, dil
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rax, -1701787862
or rdx, -109
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
jmp .bb_0.2
.bb_0.2:
neg dil
or cl, cl
xor al, -26
and dl, dl
and al, dil
test rax, -2004802425
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
