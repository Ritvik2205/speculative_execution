.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb esi, esi
setno al
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
xor rsi, rsi
cmovnb rdi, rdi
sbb rdi, 110
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 76
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
not eax
adc esi, 70
add al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rdx, 54
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
