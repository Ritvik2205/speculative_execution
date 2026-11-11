.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, esi
imul rdx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rcx
sbb cl, bl
cmovs rax, rax
setnle al
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 55
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
neg sil
sub ecx, 99
or dil, 98
cmp edi, 91
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
