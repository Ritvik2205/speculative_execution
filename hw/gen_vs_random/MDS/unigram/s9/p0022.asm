.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rdx
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
btr esi, 19
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
cmovnb rax, rsi
cmovnle cx, si
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and bl, 68 # instrumentation
cmovns dx, bx
jmp .bb_0.1
.bb_0.1:
btr rdx, 40
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and dl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
xor al, -4
cmovnz si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
