.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
cmp edx, 27
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
adc dl, 85
cwd
add cl, sil
xor dl, dil
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dl, al
adc al, -3
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmovb rcx, rax
cmovno si, si
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
