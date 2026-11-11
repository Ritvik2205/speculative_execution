.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
sbb dl, dl
add bl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 363226538
and bl, bl
inc esi
cmp sil, -110
xor sil, dl
add dil, 33
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
cmovno esi, ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
