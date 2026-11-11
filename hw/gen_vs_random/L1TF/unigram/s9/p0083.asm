.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, rax
dec cl
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
cmovb ax, bx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
or bl, 114
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
xchg rdi, rdx
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
sub dil, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
