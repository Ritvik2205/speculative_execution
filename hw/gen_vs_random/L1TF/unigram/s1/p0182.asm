.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
imul ax
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 80
cmovle di, dx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and bx, 28
setnz dil
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
bt rbx, 93
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
