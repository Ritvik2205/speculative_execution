.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz dx, ax
or si, -12
or esi, -110
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
cmovo si, ax
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or edx, -78
cmovns edx, edx
cmovno ax, ax
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 63
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and dl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
