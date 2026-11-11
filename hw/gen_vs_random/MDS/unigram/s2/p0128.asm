.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 10
cmovnle esi, ecx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 8
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and cl, -109 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and al, 122 # instrumentation
cmovnb rax, rbx
not ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
bts rbx, rdi
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 63
or cx, 10
cmovl rax, rdx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
