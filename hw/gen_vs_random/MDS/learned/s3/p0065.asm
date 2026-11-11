.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test cl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
xor dil, al
and eax, 943733866
xor dl, al
and al, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
btc cx, 115
or cl, 30
test al, 127
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
