.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
lea si, qword ptr [rdi + rbx]
mov al, al
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 78
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
add rdx, rsi
lea bx, qword ptr [rsi]
test ecx, 69
add dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
add al, -112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
add dl, 43 # instrumentation
lea rax, qword ptr [rcx + rdi]
or edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
