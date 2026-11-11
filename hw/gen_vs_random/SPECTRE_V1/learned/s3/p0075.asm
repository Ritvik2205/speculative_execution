.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
cmp cl, dl
mov al, al
cmp ax, 23607
or al, al
setnp cl
and dl, al
sub al, 10
test al, 70
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
