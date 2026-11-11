.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmovno rbx, rdi
lea ax, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
cmp al, 13
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
cmovb ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
lea rcx, qword ptr [rax]
imul di, bx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
