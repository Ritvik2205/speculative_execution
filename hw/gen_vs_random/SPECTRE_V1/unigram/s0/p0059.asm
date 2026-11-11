.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -23
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 14
add al, -73 # instrumentation
setnbe al
sbb dl, -23
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 28
xor rcx, 54
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
neg rdx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
add si, 52
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
