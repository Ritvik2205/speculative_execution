.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
btr ax, cx
or sil, bl
or cl, 7
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and sil, cl
xor bl, -88
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and al, -8
or dil, dl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and ax, -122
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
