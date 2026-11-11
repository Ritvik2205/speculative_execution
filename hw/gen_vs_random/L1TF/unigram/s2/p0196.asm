.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
setnb bl
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
add al, bl
cmovb ax, cx
add bl, 92 # instrumentation
sets dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
btc edi, ebx
add bl, 115 # instrumentation
setz dil
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
adc bl, cl
setl al
sbb rax, 1131444263
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
