.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rax
bt rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
btc si, 43
cmovl ebx, eax
bts rsi, 221
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
btr edx, 197
jmp .bb_0.1
.bb_0.1:
cmovb dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
test bx, di
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
cmovo rax, rax
cmovl rcx, rax
cmovnp ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
