.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, di
or bx, 90
cmovns rdi, rax
dec dx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or sil, sil
jmp .bb_0.1
.bb_0.1:
sbb rax, -1841833326
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
add dl, -52 # instrumentation
adc dx, 86
imul rcx
xor sil, bl
or eax, ecx
and cl, dil
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
