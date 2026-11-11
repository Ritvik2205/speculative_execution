.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
btr rdx, rsi
mov sil, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and dl, cl
cmovle ax, dx
sub di, bx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
add dil, dil
add bl, -87 # instrumentation
cmovnle rsi, rbx
cmovnz rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
