.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
lea rcx, qword ptr [rsi]
adc di, 97
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 77
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
not eax
setb bl
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
