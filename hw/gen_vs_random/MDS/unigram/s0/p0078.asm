.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
cmovnb rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
or rdx, 89
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
cmovle ecx, edx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or sil, sil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 48
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rcx, 39
cmovno ebx, edx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
