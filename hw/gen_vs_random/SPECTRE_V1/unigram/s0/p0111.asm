.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 21
add al, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
bswap rdi
cmovbe edi, esi
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
adc bl, cl
mov dil, al
lea ebx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 59
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
movsx rax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
