.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or edx, 36
xchg di, dx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ebx
lea si, qword ptr [rax]
cmovp rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
cmovnp rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
lea edi, qword ptr [rdi + rbx + 46]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
