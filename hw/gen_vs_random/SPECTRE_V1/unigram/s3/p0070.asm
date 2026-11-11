.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovnbe rdx, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rdx
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 53
add al, 127 # instrumentation
sets al
xor cl, -103
sub bl, 28
add sil, -42 # instrumentation
lea ecx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
test dil, 18
xchg ax, di
movsx cx, sil
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
