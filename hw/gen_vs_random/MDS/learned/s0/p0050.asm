.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or bl, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and cl, -6
jmp .bb_0.1
.bb_0.1:
and dl, sil
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
test al, 22
test dl, cl
and eax, 943733866
or al, 74
or sil, -49
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and eax, 561041355
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
