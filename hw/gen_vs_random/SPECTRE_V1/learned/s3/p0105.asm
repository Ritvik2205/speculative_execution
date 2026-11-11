.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, 729805876
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdx
mov bl, bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 27
cmovno rbx, rcx
imul edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
mov bl, bl
adc ebx, ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnbe ax, bx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
