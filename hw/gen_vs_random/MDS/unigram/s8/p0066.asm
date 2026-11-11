.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
btc bx, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and al, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
xor rcx, -2
xor sil, cl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and dl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
test sil, al
bt rbx, 241
btc eax, 40
cmovbe si, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
cmovz cx, ax
cmovnp esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
