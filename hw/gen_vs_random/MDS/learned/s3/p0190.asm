.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
bt ax, di
test esi, 1857129931
test dil, cl
xor al, 115
test rdx, 48
btr ebx, ecx
or cl, 6
jmp .bb_0.1
.bb_0.1:
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor cl, al
test al, cl
and al, 49
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
