.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 11
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
test dl, dl
or bl, cl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor dl, -68
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
or rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
or dl, 22
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
