.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
mov al, 79
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 65
xor rcx, rcx
xor sil, dl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
test bl, 93
add rbx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
sbb al, dl
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
sbb dl, 75
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or si, 0b1000000000000000 # instrumentation
bsf ax, si
setb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
