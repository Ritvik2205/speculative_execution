.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
bt eax, ecx
bts cx, 191
xor al, bl
btr bx, cx
cmovnz rdi, rdx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 9
test rdx, rax
bt ax, cx
and rdi, 28
bts ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test bl, -14
btc eax, ebx
bts ax, di
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
