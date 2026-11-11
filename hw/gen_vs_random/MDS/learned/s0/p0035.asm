.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and bl, 97
sub rsi, 97
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 84
xor cl, cl
test al, -59
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 14
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 39
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
setnz dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 64
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or sil, sil
bts eax, 103
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
cmovnle eax, ebx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
