.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
add dl, -1
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 31
test bl, cl
dec di
bts ax, 201
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 35
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 46
lea eax, qword ptr [rbx + rbx + 89]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
