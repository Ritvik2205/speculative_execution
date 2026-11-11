.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, edx
movzx edx, dl
xor sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
adc rax, rbx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, 50
not rcx
add bl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
xor al, bl
and bl, al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
mul al
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
