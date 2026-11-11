.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 37
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add bl, -77 # instrumentation
cmovns dx, di
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovns edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
lea rsi, qword ptr [rsi + rbx]
cmovnz rcx, rbx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
btr ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
