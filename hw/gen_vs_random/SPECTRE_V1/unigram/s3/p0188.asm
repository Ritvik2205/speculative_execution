.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 44
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and bl, 87
cmovle rcx, rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
cmp al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
btr edx, 166
add sil, 2
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
