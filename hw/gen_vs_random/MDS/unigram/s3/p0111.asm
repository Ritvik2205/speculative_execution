.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, 4
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
bt cx, dx
test rax, 1732677821
and bx, -21
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 75
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
cmovl edi, edi
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
cmovp cx, ax
or al, -48
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 16
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
