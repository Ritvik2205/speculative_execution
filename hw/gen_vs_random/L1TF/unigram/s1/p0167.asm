.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
bts dx, 9
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 26
test al, 15
xor ax, di
not rdi
setp sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
btc ecx, 52
cmp esi, -52
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 89
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
lea ax, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
