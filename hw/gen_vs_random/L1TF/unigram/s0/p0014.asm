.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg al, cl
lea cx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
cmp ebx, edx
inc eax
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor si, -50
jmp .bb_0.1
.bb_0.1:
or sil, bl
btc rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
xor bl, al
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 21
sbb bl, sil
dec edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
