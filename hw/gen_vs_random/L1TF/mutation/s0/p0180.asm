.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -37 # instrumentation
dec cl
lea edx, qword ptr [rcx + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and ax, 37
add edi, eax
not dil
setnz dil
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovns ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
lea eax, qword ptr [rcx + rcx + 31865]
add ebx, 2
adc edi, 117
or si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
