.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edx, ebx
and rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dil, 6 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], esi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
xor dl, 8
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
btc rax, rsi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
cmovnb ax, bx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
