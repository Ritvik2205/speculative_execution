.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
btr cx, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and dil, -39
xor ax, -6793
or al, 74
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
not sil
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and esi, 24
and cx, -2
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test al, bl
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
