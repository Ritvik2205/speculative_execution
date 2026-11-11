.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or sil, al
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
xor al, bl
test bl, dl
or al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor cl, 98
or sil, dl
and bl, sil
and al, sil
or rdx, -109
and rax, -2058103810
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or bl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
