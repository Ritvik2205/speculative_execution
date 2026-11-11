.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
cmovnle si, ax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl rax, rax
add bl, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
and bl, 87
add dl, dl
sbb edx, -8
cmp rbx, 14
lea rcx, qword ptr [rdi + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
add cl, -127
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
