.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 22
xor dl, 34
and ebx, 58
xor sil, al
or al, sil
xor rax, -91
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and al, bl
jmp .bb_0.1
.bb_0.1:
or bl, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
not cl
test al, dl
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
