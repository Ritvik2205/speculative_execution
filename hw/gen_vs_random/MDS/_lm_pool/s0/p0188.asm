.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
xor dil, -3
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor dl, -43
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
or cl, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
or al, 37
or al, sil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and eax, -85386306
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
