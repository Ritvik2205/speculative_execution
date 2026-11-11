.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 53
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
cmovb rax, rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -104 # instrumentation
lea rdx, qword ptr [rcx + rdi + 15]
add dl, 121 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
cmovns rsi, rdi
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
setb dil
cmovnp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
