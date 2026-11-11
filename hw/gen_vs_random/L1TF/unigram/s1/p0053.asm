.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
imul edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cbw
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 40
lea edx, qword ptr [rax + rcx + 7]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
add si, -5
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
dec edx
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
