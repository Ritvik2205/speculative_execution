.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
add sil, -61
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rbx
test al, 15
cmp dil, 15
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
