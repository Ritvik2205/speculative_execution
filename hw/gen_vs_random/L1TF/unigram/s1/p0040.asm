.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
xchg bx, cx
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 10
inc sil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 76
jmp .bb_0.1
.bb_0.1:
not bl
and rdi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdi]
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
not al
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and al, -111
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
