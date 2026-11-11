.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
lea edi, qword ptr [rbx + rdi]
cmovnz rax, rdi
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
lea si, qword ptr [rdi + rdi + 23]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 75
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
jmp .bb_0.1
.bb_0.1:
add bl, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
sub rax, -2089384489
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
