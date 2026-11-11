.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
test rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
lea rbx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 53
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 93
cmovnl rax, rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 87
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
