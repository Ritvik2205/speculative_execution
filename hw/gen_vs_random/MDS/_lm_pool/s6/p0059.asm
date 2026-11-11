.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and dl, -73
or al, 24
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
or dil, -41
and eax, 454700988
and cl, dl
xor dl, -19
or cl, dil
or dl, dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
test cl, -123
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
