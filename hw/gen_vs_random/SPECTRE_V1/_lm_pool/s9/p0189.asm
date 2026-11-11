.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
cmovno bx, si
and sil, 52
sub sil, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add al, dil
lea eax, qword ptr [rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdi + rbx + 30]
xor edi, 115
sub si, 32
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
