.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or al, -17
cmovno ax, ax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 76
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
cmovb ecx, eax
bts cx, 177
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
bts eax, 222
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
btc rax, 106
xor sil, -126
cmovz edi, edi
and sil, sil
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 2
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
