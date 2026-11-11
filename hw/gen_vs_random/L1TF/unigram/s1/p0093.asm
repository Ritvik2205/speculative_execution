.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
cmovb esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 82
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 44
lea ebx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and cx, 127
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
adc rax, 1431457700
test si, bx
imul ax, bx, 80
add dl, 39 # instrumentation
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
