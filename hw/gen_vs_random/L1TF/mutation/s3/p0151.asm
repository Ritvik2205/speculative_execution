.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
test bx, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
inc esi
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
add bl, 92 # instrumentation
sets cl
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
or cl, dl
bt rdx, 131
sub dx, di
imul edx, ecx
sub si, bx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
