.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, cl
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
add dl, dl
cmovs dx, cx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 32 # instrumentation
sbb cl, dl
dec dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub ax, 66
sbb cl, -122
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
cmovp si, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
