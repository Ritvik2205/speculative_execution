.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
cmovo cx, di
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
dec dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
test bl, -8
or rcx, 9
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
