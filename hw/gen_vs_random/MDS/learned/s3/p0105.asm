.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
or bl, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
cmovs edx, edi
and dl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 59
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
or dl, dl
xor eax, 73
bt si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
