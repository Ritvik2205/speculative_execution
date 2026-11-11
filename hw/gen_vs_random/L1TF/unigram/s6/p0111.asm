.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 6
lea ebx, qword ptr [rdx]
xor al, dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
lea ecx, qword ptr [rsi + rbx]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
lea esi, qword ptr [rsi + rcx + 4]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
test rdx, rcx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and ecx, 50
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
test cl, 71
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
