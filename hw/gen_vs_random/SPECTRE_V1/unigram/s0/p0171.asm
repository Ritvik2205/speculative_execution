.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
dec al
inc rax
and bx, -118
add bl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
xor dil, sil
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setno bl
movsx ax, sil
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
test dil, dl
btr edx, eax
add bl, 39 # instrumentation
cmovo eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
