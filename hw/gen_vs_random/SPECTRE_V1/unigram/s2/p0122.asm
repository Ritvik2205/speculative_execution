.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
imul rbx, rdx, 9
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
add dl, -53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 51
setns bl
cmp al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovbe ebx, esi
add al, 72 # instrumentation
cmovns bx, ax
nop
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 46
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
cmp bx, dx
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
