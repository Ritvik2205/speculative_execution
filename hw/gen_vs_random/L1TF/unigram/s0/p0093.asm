.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdi, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
cmovb esi, ecx
lea cx, qword ptr [rdx + rcx + 23]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
lea rdx, qword ptr [rdi + rsi]
cmovns rsi, rcx
inc al
btc dx, di
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
lea eax, qword ptr [rsi + rsi + 98]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 47
sub si, -105
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 36
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
lea rcx, qword ptr [rdi + rax + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
