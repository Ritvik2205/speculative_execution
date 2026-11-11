.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edi, 117
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
or si, bx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
lea eax, qword ptr [rcx + rcx + 52039]
cmp cl, cl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmovns ebx, edi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
add ebx, 2
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
