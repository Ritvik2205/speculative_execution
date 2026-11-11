.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 62
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 71
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and ebx, edx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
add dl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
imul rbx, rax
xor dil, 2
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
btc cx, 31
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
bswap rax
cmp edi, 89
cmovno bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
