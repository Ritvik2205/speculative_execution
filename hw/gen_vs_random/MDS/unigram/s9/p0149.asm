.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
cmovo edx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
cmovbe rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
cmovl esi, eax
cmovns esi, ecx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 21
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
bt edx, edi
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and bl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
