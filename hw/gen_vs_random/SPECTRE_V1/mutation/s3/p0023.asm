.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
sbb eax, 99727957
sbb bl, cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
cmovnle edi, ebx
xor eax, 55
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
setnb cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
lea di, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
