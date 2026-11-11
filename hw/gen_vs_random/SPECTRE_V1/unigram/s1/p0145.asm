.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
lea rax, qword ptr [rax + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
