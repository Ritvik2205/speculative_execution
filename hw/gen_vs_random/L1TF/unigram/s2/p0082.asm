.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
add cl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
movzx eax, dil
xor dl, cl
adc dil, al
sbb di, 80
inc sil
add cl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dil, cl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
or al, -48
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
sub eax, edx
or rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmp ebx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
