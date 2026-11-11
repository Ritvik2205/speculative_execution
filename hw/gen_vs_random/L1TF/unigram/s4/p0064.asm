.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 100
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or rdx, 11
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
cmovl ebx, ecx
jmp .bb_0.1
.bb_0.1:
and al, al
xor dl, 19
imul al
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
