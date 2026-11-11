.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and al, -114
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
btc dx, 146
or dil, -71
or sil, dl
or cl, 6
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
xor cx, -18
btr ebx, edx
bt bx, dx
or dl, dil
jmp .bb_0.1
.bb_0.1:
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
