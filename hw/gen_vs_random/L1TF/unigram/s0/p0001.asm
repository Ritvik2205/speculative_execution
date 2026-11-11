.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, dx
btr edi, 1
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
lea eax, qword ptr [rdx + rdx + 80]
add cx, 50
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
test di, si
xor bx, 96
adc al, -103
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 65
sub ax, 7297
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
