.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 31
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
test ebx, 57
setb cl
not si
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sub al, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 97
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub rbx, rax
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
imul edx, edx, 31
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
