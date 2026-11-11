.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
add dl, 13 # instrumentation
setns dl
mul cx
xor cl, cl
add dl, dil
and dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
neg edx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 65
setno dil
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
btr di, 83
xor edx, 36
sub ax, dx
add cl, 72 # instrumentation
cmovnl ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
