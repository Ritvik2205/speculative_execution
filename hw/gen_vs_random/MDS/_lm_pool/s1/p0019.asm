.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
xor bl, -102
or cl, -77
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor rax, -345061362
xor dl, bl
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
or al, -75
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or al, 30
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
