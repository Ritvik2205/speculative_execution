.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ax, ax
seto sil
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 39
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
cmovo rsi, rsi
setnz dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 98
setnle al
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, 47
sbb dl, 127
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
