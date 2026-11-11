.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 72
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovp cx, dx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 3
lea di, qword ptr [rdi]
xor dl, al
or dl, dl
xchg sil, al
sub ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
