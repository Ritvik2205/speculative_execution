.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
adc edi, 117
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
lea eax, qword ptr [rcx + rcx + 31865]
or si, bx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmp cl, cl
cmovns ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
add ebx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
