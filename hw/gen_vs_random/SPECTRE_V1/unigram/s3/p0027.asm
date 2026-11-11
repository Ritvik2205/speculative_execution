.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 9
add al, 19 # instrumentation
setnz al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
test al, al
imul ebx, edx, 76
cmp rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
