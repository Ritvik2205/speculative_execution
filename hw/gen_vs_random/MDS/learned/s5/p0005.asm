.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
xor cl, 55
and al, -8
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or sil, dl
jmp .bb_0.2
.bb_0.2:
btr dx, di
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor sil, dil
jmp .bb_0.3
.bb_0.3:
or al, dl
test dil, -80
xor rcx, 71
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
