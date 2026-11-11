.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
test sil, dl
add bl, 15 # instrumentation
cmovb eax, eax
inc edx
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
movsx cx, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 31
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovp eax, esi
or dil, -28
add dl, -117 # instrumentation
lea rax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
setl al
add al, -21 # instrumentation
mov ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
