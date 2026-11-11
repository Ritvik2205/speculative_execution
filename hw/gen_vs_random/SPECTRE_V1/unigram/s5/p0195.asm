.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, sil
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
add dl, 38 # instrumentation
setp cl
lea edx, qword ptr [rdi + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and dl, -111
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
sub bl, dil
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add dl, -46 # instrumentation
cmovbe rdx, rbx
test dl, al
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
