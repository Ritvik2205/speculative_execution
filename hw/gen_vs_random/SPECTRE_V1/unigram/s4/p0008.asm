.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, sil
test al, -126
setbe dil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
lea ebx, qword ptr [rbx + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
adc al, bl
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
lea rbx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
