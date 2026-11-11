.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
bts rbx, rdi
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
btr cx, ax
btc ecx, 53
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
xor rbx, 89
and cl, sil
test al, -7
or dil, -78
cmovle si, ax
or ax, -4210
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
