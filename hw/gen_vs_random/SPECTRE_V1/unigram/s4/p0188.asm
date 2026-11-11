.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
add dl, 47
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
or esi, -74
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
not al
xor ebx, 89
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
cmp rax, rbx
cmovno bx, bx
or sil, dl
sub eax, -911655926
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
