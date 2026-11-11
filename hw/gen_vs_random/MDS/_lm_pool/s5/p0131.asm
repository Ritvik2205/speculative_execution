.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor ecx, 8
bts rdi, rcx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
btr ax, si
jmp .bb_0.1
.bb_0.1:
and edx, -44
xor dl, al
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or sil, bl
and ax, 27170
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
