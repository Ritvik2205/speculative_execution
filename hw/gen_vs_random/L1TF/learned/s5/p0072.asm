.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
test bl, al
or si, 65
lea ecx, qword ptr [rsi + rsi + 91]
cmp dl, -93
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
lea rsi, qword ptr [rcx + rdx]
test ax, 22956
bts si, 31
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
