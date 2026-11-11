.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 57
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
btr rsi, rbx
not al
cmovz ebx, ecx
bswap rax
lea dx, qword ptr [rax + rdx + 55]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ebx
adc ecx, 97
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 16
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
setno cl
sbb cl, dil
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
