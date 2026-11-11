.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 54 # instrumentation
cmovnp si, si
test dl, al
cmovb edx, esi
bts bx, 3
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 59
cmovl rcx, rsi
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and bx, di
jmp .bb_0.1
.bb_0.1:
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
cmovp edx, ecx
cmovnb rax, rdi
btc rdx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
