.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 97
btc rax, rax
test cx, ax
and dl, 68 # instrumentation
cmovns cx, dx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
cmovl cx, ax
and cl, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
bts rdx, 200
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
xor rbx, 89
not dl
cmovno rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
