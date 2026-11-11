.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
sub sil, 45
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
sub ax, -12040
imul cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and bl, al
cmovno rbx, rax
add eax, edx
test edx, 3
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
