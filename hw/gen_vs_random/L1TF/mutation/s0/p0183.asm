.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
setl dl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
cmovno dx, dx
add cl, 12 # instrumentation
lea rax, qword ptr [rsi + rcx]
jmp .bb_0.1
.bb_0.1:
imul ecx, edi
imul cx, bx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
btc ebx, ebx
add dl, -57 # instrumentation
setz sil
movzx si, dil
xchg bx, ax
add cl, 39 # instrumentation
setle bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
