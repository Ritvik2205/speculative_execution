.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
lea eax, qword ptr [rax + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 29
add cl, al
xor cl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -23 # instrumentation
setnle dl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 92
btr di, 57
mov esi, 20
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
add al, -13
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 82
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
