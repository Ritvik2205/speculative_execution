.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
test bx, bx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
inc esi
jmp .bb_0.1
.bb_0.1:
sub si, bx
bt rdx, 131
or cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
imul edx, ecx
add bl, 92 # instrumentation
sets cl
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
sub dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
