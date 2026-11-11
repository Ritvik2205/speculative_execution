.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
and al, bl
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or cl, 12
xor cl, dil
and bl, -30
sub cl, 18
jmp .bb_0.1
.bb_0.1:
test al, 18
adc al, -117
sub sil, dl
test rax, -269735774
cmp dil, cl
add dl, al
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
adc dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
