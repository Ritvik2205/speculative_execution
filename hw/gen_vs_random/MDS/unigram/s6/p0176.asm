.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test dil, dil
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
test sil, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
btr ecx, 14
or al, dil
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
cmovo ecx, edi
xor sil, al
xor bl, al
cmovbe bx, ax
and sil, 66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
btc rdx, rax
test al, al
xor sil, bl
btc rcx, rdx
bts rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
