.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rsi]
test edx, 1891691791
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
or edi, edx
bt rcx, 38
xchg dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
xor rax, 20
lea bx, qword ptr [rdi]
or sil, -44
add dl, cl
jmp .bb_0.2
.bb_0.2:
add dl, -108 # instrumentation
cmovnle esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
add dl, -7 # instrumentation
cwd
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
