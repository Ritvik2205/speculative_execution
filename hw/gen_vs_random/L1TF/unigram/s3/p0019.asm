.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
btr rsi, 54
or bl, -5
nop
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 46
bts rax, rsi
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnb esi, eax
lea edi, qword ptr [rcx]
xor bx, si
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 57
add dil, -40 # instrumentation
sbb rdi, 12
or bl, 114
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
