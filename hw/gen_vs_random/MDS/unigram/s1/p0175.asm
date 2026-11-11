.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -56 # instrumentation
cmovl rax, rbx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 83
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
xor al, -119
and dl, -33 # instrumentation
cmovns rax, rax
cmovnp rdx, rbx
xor dl, -68
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
