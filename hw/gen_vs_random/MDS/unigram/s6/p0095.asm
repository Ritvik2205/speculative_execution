.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test bl, -114
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and sil, cl
cmovnl edi, edi
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
bt dx, di
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and dil, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and cl, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and sil, bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 35
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
or edi, eax
cmovb cx, di
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
cmovnp rdx, rbx
and cl, -76 # instrumentation
cmovl dx, bx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
