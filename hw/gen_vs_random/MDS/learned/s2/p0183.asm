.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
not al
and rax, 79
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and sil, -56
or dl, dl
xor dil, 124
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
test al, sil
test al, dil
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
or ax, 30524
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
