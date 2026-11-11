.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ax, di
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or cl, dl
cmp rbx, 78
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 97
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
lea rcx, qword ptr [rbx]
cmp esi, 110
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
