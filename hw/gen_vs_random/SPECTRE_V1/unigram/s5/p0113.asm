.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
setz bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
imul ecx, esi
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 18
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rbx]
and rax, rax
add bl, cl
and dil, sil
dec dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
