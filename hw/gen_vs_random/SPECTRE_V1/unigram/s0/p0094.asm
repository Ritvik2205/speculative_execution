.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
sub rsi, 121
cmovnp bx, dx
bt edi, 88
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 28
cmovnz rsi, rcx
add bl, 126 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
cmp al, al
cmovnp ax, di
xor si, 23
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add al, -125 # instrumentation
cmovb esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
