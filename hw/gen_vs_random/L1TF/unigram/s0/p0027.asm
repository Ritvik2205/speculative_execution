.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, rax
not al
test bl, 45
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
lea esi, qword ptr [rdi + rdi + 48]
cmovs rcx, rdi
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
sets dl
or rsi, rsi
sbb cl, al
add dl, 76 # instrumentation
sbb ax, 10551
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 12
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 37
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
