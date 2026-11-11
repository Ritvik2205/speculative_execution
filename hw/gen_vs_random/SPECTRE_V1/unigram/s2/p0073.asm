.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rsi + rsi + 31]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xchg edx, ecx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
xor dx, 63
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, al
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 46
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
adc al, sil
lea cx, qword ptr [rbx + rcx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
sub edx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
