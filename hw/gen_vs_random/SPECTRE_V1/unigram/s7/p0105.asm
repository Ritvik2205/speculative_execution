.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 66
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 22
and di, 58
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
add dl, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
sbb al, 33
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
or sil, al
add bl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
movsx ebx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
