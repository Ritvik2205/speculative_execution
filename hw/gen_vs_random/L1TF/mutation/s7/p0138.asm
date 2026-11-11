.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ebx, edi
lea eax, qword ptr [rcx + rcx + 31865]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
or si, bx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmp cl, cl
adc edi, 117
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
add ebx, 2
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
