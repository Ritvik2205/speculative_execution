.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and cx, -8
cmovbe edi, edi
bts cx, 14
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
cmovnle cx, dx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
not al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
not cx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rax, 1886208862
test rsi, rcx
and dl, -1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
