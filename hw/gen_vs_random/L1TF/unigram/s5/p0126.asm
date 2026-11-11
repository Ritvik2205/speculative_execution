.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
adc cl, bl
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
sbb bx, 60
add cl, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 99
xor esi, 56
imul sil
add bl, -92 # instrumentation
setnz al
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and ecx, edi
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
