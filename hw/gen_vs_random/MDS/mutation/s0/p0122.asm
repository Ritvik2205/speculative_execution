.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and dl, dil
btc di, 233
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and ax, -122
xor rax, -91
cmovp edi, edi
cmovbe edi, eax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, rbx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
