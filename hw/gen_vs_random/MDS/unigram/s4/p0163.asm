.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, 22
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 11
bts rbx, 25
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
bts rbx, 25
bt rsi, rsi
xor di, -83
xor cl, dil
test al, bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
cmovno rcx, rbx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
and rcx, 107
and bl, 45 # instrumentation
cmovnb dx, cx
btc edx, 75
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
cmovo edx, eax
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
