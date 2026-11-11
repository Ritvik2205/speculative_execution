.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rsi, rdi
cmovnb dx, bx
cmovnz ax, cx
or dil, bl
btr eax, 51
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
bts dx, 50
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
btc rdx, rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 95
or cl, -77
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and dl, -116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
xor rdx, -59
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
bts eax, 222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
