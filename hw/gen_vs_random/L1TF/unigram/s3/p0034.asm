.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
or eax, edx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
sub di, bx
cmovnbe esi, ebx
inc ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 92
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
lea edi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
