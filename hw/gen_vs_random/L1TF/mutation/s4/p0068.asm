.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 110
and edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
or bl, al
setnbe dil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
mov di, bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc ax, -8436
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
mov edx, edi
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
not bl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
