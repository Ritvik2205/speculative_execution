.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
xor al, al
mov cl, al
and cl, bl
xchg bl, cl
sub bl, al
cmp dil, -92
or dil, -16
sub dil, cl
and rdx, 84
xor edx, 1
sub al, bl
xor al, dl
test edi, -1380439873
imul rdi, rcx, 32
adc sil, bl
and al, 92
mov al, -71
xor bx, si
xor eax, 550678097
xor al, 30
test ecx, -907816607
sub rax, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
