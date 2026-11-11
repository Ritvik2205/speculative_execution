.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -2123070438
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
lea dx, qword ptr [rsi + rsi + 6302]
cmovns rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
xchg rdx, rax
or edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
