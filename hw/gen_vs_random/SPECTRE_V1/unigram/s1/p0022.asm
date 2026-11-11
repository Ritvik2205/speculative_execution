.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and di, 87
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
movzx rbx, ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmovs dx, di
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 94
setb dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
sbb eax, 2098460225
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
sub rsi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
