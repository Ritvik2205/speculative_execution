.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and bl, -60
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
adc edx, -125
sub bl, al
xor cl, 13
xchg rbx, rcx
and al, 100
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 34
xor rax, 944027678
sub dl, cl
xor cl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or bx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
