.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
cmp eax, 123533400
not dl
xchg sil, al
test ax, 636
sub bl, -96
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and al, -68
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmp ax, -31327
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
