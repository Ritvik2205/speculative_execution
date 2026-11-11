.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or dl, dl
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
bt ecx, ebx
xor dl, -43
test dil, 46
or bl, al
or dil, -41
xor dil, sil
test eax, -675944960
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
