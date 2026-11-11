.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, 85
add al, cl
test bl, -8
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test sil, 97
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 79
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setz sil
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
sub al, al
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
