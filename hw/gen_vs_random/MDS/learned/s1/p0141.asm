.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or sil, dil
and sil, -69
test al, 127
not dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor bl, dl
xor ax, -12492
jmp .bb_0.1
.bb_0.1:
test dil, -51
jmp .bb_0.2
.bb_0.2:
test ebx, -2015966884
and dl, sil
or ax, -11837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
