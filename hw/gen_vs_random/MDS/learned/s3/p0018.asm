.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
cmovnb dx, bx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 10
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and al, 126
add cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rcx + rsi]
and al, 93
test rdi, 63
cmovnl rax, rax
movzx ebx, bl
cmp rax, 38
cmovo esi, ebx
jmp .bb_0.2
.bb_0.2:
bts rax, 117
cmovns eax, eax
cmovnz edx, esi
jmp .bb_0.3
.bb_0.3:
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and cx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
