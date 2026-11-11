.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, dil
test al, -7
or rcx, -17
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
btc eax, esi
cmovb rbx, rax
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovnb rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 33
cmovno rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
cmovnbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
btc eax, 40
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
btr esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
