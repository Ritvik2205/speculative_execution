.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rcx, rbx
test rdx, 65
btc esi, esi
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
or dil, 16
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 50
bts rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 44
cmovno rsi, rsi
bts edi, ecx
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmovp ebx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
