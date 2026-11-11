.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, bx
and al, dl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
inc esi
or eax, -1827868798
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and al, -37
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and sil, -94
test dil, al
or rax, -285849275
cmovl rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
xor cl, cl
cmovbe ax, dx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 59
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
or rdx, 19
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
