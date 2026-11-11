.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
and dx, cx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
sbb rax, 1131444263
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
setnz dil
test eax, eax
neg rbx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
