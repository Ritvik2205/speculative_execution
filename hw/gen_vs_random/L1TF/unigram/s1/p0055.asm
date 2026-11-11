.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
test rcx, 64
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
xor bl, -5
movsx edx, al
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
setns dl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
xor esi, 14
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 17
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
