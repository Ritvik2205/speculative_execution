.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, si
lea rax, qword ptr [rdx + rdi + 7]
xchg rcx, rbx
cmovns rdi, rcx
xor esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
sub al, dil
cmovle rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
xchg rdx, rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax + rdx]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
