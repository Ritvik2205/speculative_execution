.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 69
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
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
setnbe bl
test eax, 1730342416
imul ax
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
xchg si, bx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
btc rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
