.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp esi, esi
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
add bl, 115 # instrumentation
setz dil
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
test ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
test dl, 84
add cl, -73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and edx, 50
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 13
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
add sil, al
cmovs rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
