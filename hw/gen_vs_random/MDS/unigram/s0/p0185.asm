.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
xor esi, 98
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
xor rdx, -59
and edi, 23
xor rcx, -2
bt rdi, rsi
cmovnbe eax, eax
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
test sil, sil
and dl, 38 # instrumentation
cmovbe eax, edx
test sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
btr rbx, 193
xor dil, -70
xor rbx, 89
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and cl, 78 # instrumentation
cmovs ax, si
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
