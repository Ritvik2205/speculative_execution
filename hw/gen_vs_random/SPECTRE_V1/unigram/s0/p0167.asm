.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and dil, 84
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xchg rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 79
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 68
movsx dx, bl
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
bts edi, esi
test ebx, 16
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
lea si, qword ptr [rbx + rcx + 44]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
