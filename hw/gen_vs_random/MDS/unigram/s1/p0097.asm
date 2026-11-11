.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rdx
and rcx, 73
and bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts edi, eax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 74
bt ecx, 93
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
cmovl rdx, rsi
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 12
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rcx, 37
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
cmovnle rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
