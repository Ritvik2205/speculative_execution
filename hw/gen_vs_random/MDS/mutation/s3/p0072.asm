.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
cmovnle rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
xor rax, -404206377
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
not al
and rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
cmovp bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
bts ax, 22
test dl, 9
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
