.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -52
and al, dil
or dl, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
cmovl edx, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 68
btr ax, 57
bts rdx, 255
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
bt rdi, 40
btc rax, 39
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 17
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and dil, 79
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
cmovb rax, rdi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
