.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
lea rdi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 18
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and bl, al
mov rdi, 42
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
add sil, 2
cmp al, dil
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
