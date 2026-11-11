.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
add cl, 19
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 75
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
xor cl, dil
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
adc bl, 8
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 3
sub ax, -12040
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
lea edi, qword ptr [rcx + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
mov si, 20858
btr cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
