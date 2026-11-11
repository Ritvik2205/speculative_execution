.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
cmovo rdx, rdx
or dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
bts rbx, 25
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
xor di, -83
bt si, 23
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
cmovnb eax, edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or dl, -89
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
and rax, 41
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
