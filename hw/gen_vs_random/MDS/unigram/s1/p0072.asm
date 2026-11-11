.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
cmovnbe edx, edx
bts di, 37
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
bt cx, ax
or ax, -11837
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
and rsi, 23
jmp .bb_0.1
.bb_0.1:
xor sil, 94
btc di, 164
cmovp esi, edx
or sil, -78
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
bt rcx, 64
and bl, 108 # instrumentation
cmovns rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
