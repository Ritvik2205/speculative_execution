.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
cmp ax, -79
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
add dl, sil
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, bx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
jmp .bb_0.2
.bb_0.2:
add al, 71 # instrumentation
setp dl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
imul cl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118
mov rbx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
