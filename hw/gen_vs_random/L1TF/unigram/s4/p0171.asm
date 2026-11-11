.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rdi
add bl, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
cmp rax, rdx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 28
lea cx, qword ptr [rdi + rdx + 30]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add sil, sil
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
xor ax, -16232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
