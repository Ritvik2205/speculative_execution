.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
cmovnle ecx, esi
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
setbe cl
xor al, -28
btr rdx, 194
not ecx
cmovb si, dx
jmp .bb_0.2
.bb_0.2:
and dl, 60 # instrumentation
cmovno edi, edi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 14
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
cmovo rcx, rax
cmovns eax, eax
or dl, dl
movsx edi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
