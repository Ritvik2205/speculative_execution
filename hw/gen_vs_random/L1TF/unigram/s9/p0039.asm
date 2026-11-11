.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
add si, -5
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
btc rax, rsi
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
adc bl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
sbb ebx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
