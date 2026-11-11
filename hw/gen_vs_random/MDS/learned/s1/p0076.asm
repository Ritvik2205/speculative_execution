.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
or sil, dil
and al, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
