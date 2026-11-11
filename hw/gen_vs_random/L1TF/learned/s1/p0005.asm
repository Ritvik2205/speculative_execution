.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, dl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
sbb bl, al
test al, cl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 21
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 94
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
sub ax, 19828
add edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
adc dil, 95
sub esi, edx
sbb rax, 717206440
cmp ax, 2764
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
