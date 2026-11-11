.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
cmovnp dx, di
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
movzx ecx, dil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add bl, 7 # instrumentation
cmovnl esi, ebx
sub eax, -518999763
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
