.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
not al
not bl
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 32
xor cl, -13
and cl, 49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 79
or rsi, 84
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor dl, cl
btc di, 233
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or bx, 7
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
