.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 2
lea di, qword ptr [rcx + rax + 16]
add dl, 96
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
cwde
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
add bl, 126 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 79
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], esi
add dl, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
cmovnbe ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
