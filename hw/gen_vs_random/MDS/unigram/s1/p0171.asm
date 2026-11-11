.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and al, 14
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
and sil, -35 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
xor cl, 83
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
btr di, si
jmp .bb_0.1
.bb_0.1:
btr rsi, rax
cmovle ax, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
btr edx, edi
bts ebx, edi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bt bx, dx
xor bl, -102
xor rax, -270810088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
