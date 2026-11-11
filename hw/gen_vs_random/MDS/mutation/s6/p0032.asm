.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and dl, 91 # instrumentation
cmovnle edi, edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor dl, al
or cl, cl
cmovb rcx, rdi
or bl, sil
test eax, -409834435
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
or esi, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test rax, 337705873
and rcx, 107
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
