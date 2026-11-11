.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovz eax, ebx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
add al, 24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
test si, 42
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 99
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
setnle dl
xor ax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
