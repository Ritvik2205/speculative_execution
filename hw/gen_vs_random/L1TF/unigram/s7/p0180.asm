.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
cmovnbe edx, ecx
add cl, 40 # instrumentation
cmovbe ax, cx
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 79
jmp .bb_0.1
.bb_0.1:
btr esi, edi
sub al, cl
or si, 73
dec bx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
lea si, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
