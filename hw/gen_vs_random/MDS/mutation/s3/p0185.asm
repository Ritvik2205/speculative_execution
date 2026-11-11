.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or cl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
cmovb rcx, rdi
cmovnp eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and dl, 91 # instrumentation
cmovnle edi, edi
or esi, esi
xor dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
or bl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test eax, 298249463
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
test rax, -648054011
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
