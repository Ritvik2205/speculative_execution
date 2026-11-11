.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
test dil, -80
or al, bl
or al, -75
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor sil, -15
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and cl, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and al, -54
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 91
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
