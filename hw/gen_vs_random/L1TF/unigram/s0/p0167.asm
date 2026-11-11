.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, di
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
mov esi, -1776760885
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
setno dil
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovo cx, di
lea rcx, qword ptr [rbx + rdi + 65]
mul al
add bl, -45 # instrumentation
cmovs rax, rax
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
add dl, -108 # instrumentation
cmovnle ecx, ecx
lea eax, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
