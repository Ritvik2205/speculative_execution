.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe cx, di
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
cmovle rdx, rsi
xor si, dx
cmovz rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdx
and bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and bl, -26 # instrumentation
cmovnp rax, rbx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
bt edi, 254
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
cmovno eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
