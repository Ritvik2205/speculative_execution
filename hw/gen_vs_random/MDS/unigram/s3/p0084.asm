.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
btc si, 43
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and dx, 3
and bl, 20 # instrumentation
cmovo ebx, edi
cmovbe si, cx
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
xor cl, 15
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
btc ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
btc edi, ebx
xor cl, -13
or ebx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
