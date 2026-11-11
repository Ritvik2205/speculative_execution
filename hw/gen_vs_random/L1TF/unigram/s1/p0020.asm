.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb dil
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
lea rcx, qword ptr [rsi + rdx]
xchg ax, dx
add cl, -117 # instrumentation
lea rbx, qword ptr [rcx]
lea edi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
imul ax
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 69
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
setnle dil
cmp di, dx
and ecx, -38
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
