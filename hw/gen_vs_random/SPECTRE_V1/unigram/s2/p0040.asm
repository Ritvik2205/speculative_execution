.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 10
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
sub cl, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 10
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
add bl, 113 # instrumentation
setnb bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
lea ax, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
lea ax, qword ptr [rax]
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
