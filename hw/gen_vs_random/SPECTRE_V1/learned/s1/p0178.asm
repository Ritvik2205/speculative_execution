.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
xchg si, cx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
cmovl ax, di
setnp cl
lea di, qword ptr [rax]
lea rdi, qword ptr [rcx + rdi + 2044]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
