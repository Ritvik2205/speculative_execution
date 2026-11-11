.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -19
or al, 30
or sil, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
btr ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
or cl, sil
xor dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor bl, dl
and edx, -44
jmp .bb_0.3
.bb_0.3:
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
