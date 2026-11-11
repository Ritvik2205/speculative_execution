.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
and dl, 120 # instrumentation
cmovnz eax, esi
xor al, al
not rax
cmovnp rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or dl, al
btc eax, eax
xor bl, dl
jmp .bb_0.1
.bb_0.1:
xor ax, -1005
test edx, edi
test dil, dl
and bx, 46
and cl, -67 # instrumentation
cmovnle rsi, rcx
cmovl rsi, rdi
and sil, -67 # instrumentation
cmovnle rax, rsi
or edx, -78
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
cmovnle eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
