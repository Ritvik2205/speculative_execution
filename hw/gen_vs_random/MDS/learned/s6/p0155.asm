.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, bx
xor al, cl
or dl, -31
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rcx, rdx
jmp .bb_0.1
.bb_0.1:
or al, 37
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and dl, dl
xor sil, -126
and dl, dl
or bl, -62
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor al, 9
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor ax, 31969
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
