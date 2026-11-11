.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 39
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
cmovnz ebx, edx
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and dl, dl
cmovl ax, si
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
bt ax, 76
and ebx, 53
cmovl edx, ebx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
test rsi, 81
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
