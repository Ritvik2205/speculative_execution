.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovl rax, rsi
and bl, -3 # instrumentation
cmovnb bx, cx
jmp .bb_0.1
.bb_0.1:
xor cl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
or sil, -8
and si, di
cmovnbe si, cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and bl, 49
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
cmovns eax, eax
dec dl
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
