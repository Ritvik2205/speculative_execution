.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 31
xor rax, rcx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or cl, dl
sbb al, -52
dec al
cmp dil, al
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
adc dl, bl
adc dil, -48
or dil, 5
xor al, sil
sub al, 86
adc bl, al
xor edi, 127
xor al, cl
sub bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
xor eax, -1772786275
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
