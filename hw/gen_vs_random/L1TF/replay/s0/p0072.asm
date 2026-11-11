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
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
add cl, 12 # instrumentation
lea rax, qword ptr [rsi + rcx]
setl dl
cmovno dx, dx
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
imul cx, bx
imul ecx, edi
add dl, -57 # instrumentation
setz sil
movzx si, dil
btc ebx, ebx
add cl, 39 # instrumentation
setle bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
xchg bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
