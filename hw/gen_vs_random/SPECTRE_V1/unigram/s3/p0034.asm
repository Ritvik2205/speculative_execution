.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
adc dil, cl
lea di, qword ptr [rax + rbx]
movsx esi, sil
imul bl
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
add cl, 90 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
add edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
