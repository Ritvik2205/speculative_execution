.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 38
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
add al, -93 # instrumentation
xchg rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 41
xor esi, 10
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
