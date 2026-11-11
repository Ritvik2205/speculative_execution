.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
and cx, 63
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
imul al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test edi, 42
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, -19
sets bl
setb al
xor rdx, 84
mul sil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
