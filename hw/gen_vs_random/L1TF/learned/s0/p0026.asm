.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx + rdi + 55]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 65
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
dec al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
test al, -32
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
