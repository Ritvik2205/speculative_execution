.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul di, cx, 40
add cl, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 14
lea di, qword ptr [rdi + rdx + 56]
or rsi, rdx
lea rax, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
setb dil
add cl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
lea di, qword ptr [rcx + rdi + 62995]
and dl, -86
and bl, 89
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
