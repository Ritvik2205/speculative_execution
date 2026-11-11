.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 75
or rdi, rsi
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rdx, 5
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 21
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmovs cx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or bl, 84
or dl, dl
not dil
btc rdi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
cmovnb rax, rdi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
cmovp eax, eax
or sil, al
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
