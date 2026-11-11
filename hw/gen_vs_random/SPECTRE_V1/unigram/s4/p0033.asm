.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 9
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
sbb cl, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx + rdi + 89]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
btc esi, 47
setp bl
sub dl, cl
adc al, dl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
