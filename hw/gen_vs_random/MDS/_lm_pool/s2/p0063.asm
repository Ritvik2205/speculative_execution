.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
test cl, sil
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test sil, -55
xor edi, 45
btr eax, ebx
and al, -114
and ecx, -104
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor cx, -18
xor sil, dil
or ax, -11837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
