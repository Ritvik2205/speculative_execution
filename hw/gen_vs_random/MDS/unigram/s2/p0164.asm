.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
cmovo rsi, rbx
cmovl edi, ebx
or esi, esi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
cmovnz si, dx
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmovle rcx, rbx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
bt eax, 37
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
test eax, -409834435
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
xor edi, 54
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
