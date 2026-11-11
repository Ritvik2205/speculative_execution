.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -56
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
bts dx, 50
btr dx, dx
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmovno bx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and bl, -56 # instrumentation
cmovnle ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and dil, dl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
not rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
cmovnl esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
