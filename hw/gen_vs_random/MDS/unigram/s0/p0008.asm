.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt cx, 22
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
btr rcx, 75
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
bts si, di
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and al, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
or di, 89
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
