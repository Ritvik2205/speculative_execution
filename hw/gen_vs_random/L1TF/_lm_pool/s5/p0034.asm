.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
test dil, -126
cmovle rax, rbx
sub bl, -96
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and al, dl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or bl, cl
xor bl, sil
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
