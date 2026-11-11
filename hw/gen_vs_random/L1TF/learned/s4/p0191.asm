.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
setp bl
cmovno eax, edx
setb cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
xor edi, 48
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
lea ebx, qword ptr [rcx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
inc cx
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
