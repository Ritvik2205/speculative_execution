.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov si, cx
add al, 65 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
test ax, 97
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
bt bx, cx
mov rcx, 70
xor rdi, rdi
setb cl
or rsi, 21
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
