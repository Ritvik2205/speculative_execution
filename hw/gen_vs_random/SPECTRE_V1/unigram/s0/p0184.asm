.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
xor rbx, 32
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
add dl, 41 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
imul rcx, rsi, 20
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
sets dl
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
or rsi, 2
mov al, 100
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
cmovb ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
