.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
test ebx, edi
add rcx, 21
neg dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
cmovs edi, eax
add dil, -7
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
