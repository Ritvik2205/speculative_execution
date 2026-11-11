.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
xor ebx, 20
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
xor bl, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
btr ebx, 0
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
